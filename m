Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22EB256E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661261453;
	h=To:Subject:From:Message-Id:Date;
	bh=eaYYH0lN+nQpnJfHnu4eXgELiDUAUZTjqgMlke5V8Mw=;
	b=GwWw+DcGzckCkH5j0Ow3UEQENS3xc1gLEuSH9XeqDwVvoeRpag9l5ScXwex0EziA
	5kpb879qalsMVKAZUBDaPHJvMhBRngX8iLdxUa2Z9663kN+EujZUhfHajLeXldQSl7g
	CEqlSBP+qkX1tpA9IMhl/ve0syuaBn4s0ec/6PKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661261453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eaYYH0lN+nQpnJfHnu4eXgELiDUAUZTjqgMlke5V8Mw=;
	b=O0dnzXoqhaj4b02zyOFcPOspAihFOINaFtBfgPVgm0NRNWyezeb8qcYusts521xh
	svYLpn+ZKcK2zMW3bCzj73yDet35a/RGEgpcOhzBA7jPUnIxYr7Es00WVZGZ4q/wtvG
	tIEbZhia2vufpy/HaOVYvRC0XZXIEi8U/SypnFSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cae614ff-b6e8c9a8-59ae-4bca-9664-4ef7702c7796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a942e912fd0af2bba244dba1965bfdec91454e77c1ce77c23aa0e887b02230c
Date: Tue, 23 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661261452
