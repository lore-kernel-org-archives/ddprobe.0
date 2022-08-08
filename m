Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6322E1360
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659916852;
	h=To:Subject:From:Message-Id:Date;
	bh=begMPFAxE9a48kLkvapO1P7/zTCIoG1k9Ys8UU6XRHw=;
	b=bkSZBG6l4Y3LYvMEWqAK8ztFRdwoNGVIXcRXFL+rp/FdJzfJNfx4mSuH2BWowNTW
	jOeFdm+C3Ad3hDQJwel+K0kaB+4TGOrm/jmMQqM+YwB1qfAB61u+uxBc+W+spWLjyfD
	gbdrtTs9Y/6Z7yVKveh2uxD++pq/fHUwq0Y45FPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659916852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=begMPFAxE9a48kLkvapO1P7/zTCIoG1k9Ys8UU6XRHw=;
	b=BL2vvmIOazYP237AnCmO2BsF7DJJVGxW+Kt75TGUPNGGsukPXZ7OcuRQGIKoKRVp
	+DJP/Z8Ey+XDsllvrAmbjsNgpUaK5MPfZQmBbCyRUadgxMXK9h+1t2XL5HWP8Ptc641
	ca5JDj8kbD/AwCK9wLUTzofwlv867KYBEtpjHpMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ac11d74-b1043ca8-6cb3-491c-9a8c-59cc87ab45d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fd1dc9f288205fe854ee7fdc3391a9414cd57bd23b505b3213e76753c652df2
Date: Mon, 8 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659916852
