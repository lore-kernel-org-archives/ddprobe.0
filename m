Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD227E
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657835212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZaS8Vc67AMZlu2vSYiJFDVjaFlM66u7b0wRRnZ2Yirw=;
	b=DeCyI351EXl7HMuc/OvvBE8rvhkSeAm3JIvSK2z4igdu8NaX17DIQsurnsQBm0Bh
	m7XxBDV/S1DhYSPisHLOvg+EK5O5Bpo5IhQyGGTsA/qQ/vtW56dRugV4fpOVxFtTd+x
	ndKuu9nxfH7ICTIlY9UGsZlQmD4C39GtOGpeggrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657835212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZaS8Vc67AMZlu2vSYiJFDVjaFlM66u7b0wRRnZ2Yirw=;
	b=JEU++N4XDKpCe77121KkbfBBi3jFjsuH5gTTPOnRbj6q9Dq72Wz1DH+Ajth+qHRf
	ClespMiSl1oHLXVOU5ccpgverIxToGS02hXdvja7prJf36KSCBfh8Tjnw/WvPlG8b/0
	XYNk9/hcb5Hpn3t5X+aMJSruCj2cbiH7QsMP24kc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181feadce0b-93cd9e1e-9c3c-48f1-bc71-ea2bb4828f60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b492e67c8259f9df6e5d3e989baedc13c121617a8a0bbf96a4f0a38d63cb8a7
Date: Thu, 14 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657835212
