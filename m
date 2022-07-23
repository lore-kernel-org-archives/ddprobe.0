Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313947E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658607412;
	h=To:Subject:From:Message-Id:Date;
	bh=RTVx28pSbzmpSO2I7r6ig4AIop+KkLTtX7qDuJpI878=;
	b=V/kREm2/GuzwG1WcSVnc3IGFS/gIGXNOZMUtnHwKmaOgFe30LSz1ibqFRecWDc17
	aTXB0Fv7cDK+QoaDDF7w3up1o8HBnS2TCsClqHo2o26lxQ9wYsPQehWbYXupSYWSIWl
	U1zGTQeWMXDqRDNASNxzBIJV/tnvngUHv49LWxyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658607412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RTVx28pSbzmpSO2I7r6ig4AIop+KkLTtX7qDuJpI878=;
	b=Zs7GYlp+5uahNdukhSNz5FYJyvoFIVO7JHN/z+ddbRn2ip85FJZsgWDcDDCE3chb
	V+5wba5E+E4vRhNchax4luHudfFHGm1S+Qr4ow9gQHtff2FnkZ5fwfyMfUrPpWQkNlv
	Ry4kragGKM8Nfff/hmj6EZV5ZOPmQOVPGghVQ84Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822cb4a452-cd43f610-380e-421d-8d06-8ac02f532b68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09160f098bc32a00a0efd9597e551e84545e8a326ae5c9e6661d9cde683811db
Date: Sat, 23 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658607412
