Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BEF23AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656777412;
	h=To:Subject:From:Message-Id:Date;
	bh=V2gtFcr5/A6KEn92e5I4Hqou0KXz+hBJqkPDqCSqJ0c=;
	b=JZ57A/j6A+v6TBUAEK4rotJN6McgRJbqQnnflcHhG2/+SV/vVm4u8JTFt6+INx/u
	ygLPUabUY6716Pex493/KreiH4/W3eyBcGFxTzxRI3n4hrkwMpVtQE7R1emBuAJSKgl
	OcPlG4wzDSj1UNGEEbkp0ZkYLZmoXrOaBWRoQidY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656777412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V2gtFcr5/A6KEn92e5I4Hqou0KXz+hBJqkPDqCSqJ0c=;
	b=Qcw0wKFC4OITJ5Q9hYMJGUUWeCVkxjpWiysmh67vTwYUIsz09KjxenqBo2frNf1w
	3JpI30KfU9t0u/J7tpWruv6CTYCDfSqSNbJstPqBL3jHm1/OV/jsPVGy2YBxCt1UhKG
	g62BI1BqLng+VWlOv7xNFYOAY/ZKjrREgybwniR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bfa10ed4-80504255-9c3b-4e49-b315-6b2797adecb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b09dc6ab3ecd13c1d166ef95c061c2705e0e931d84453cece527db98d5d060ff
Date: Sat, 2 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656777412
