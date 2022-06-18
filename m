Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFD07B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 22:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655589659;
	h=To:Subject:From:Message-Id:Date;
	bh=Jixvs5R6zkpDeHAcziNlnvcgwO/7CcwFxgkA0g+Xy4Q=;
	b=Gpf3PnVohdCRXQvgL8Jq2tDt+ggSDFedNzJEQwpm8SAzsg2hiDYkabuPXHRILVC2
	w6YSggEOY2krCSP+dqRJ43NNyT/hR1ej4QkM0tFxV1gXqu88l++754q1DoRYWoisusa
	/96V0Jeo/umBy0o+7GU0jm6/XIog2NIpeMvtt2VI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655589659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jixvs5R6zkpDeHAcziNlnvcgwO/7CcwFxgkA0g+Xy4Q=;
	b=VGRlsaN/IJ+/fR/A0LWC/PX6ZinWNWWllrkilNqiSB/SmXiH7CiCgTvImkiN6tAS
	OQOF+63nVWFW5dAKEollDVDbPuWiDXoGIQTFpPmnQaku8usl2PXGGW2bpVZzVKLTmkE
	jE9dpn46rikVfoJqui1/fp8u2nRGK4N2XWOXyHA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178d56294-ef29661f-b886-4c6a-b002-1635c07715fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43618ff80394d4b7657d1b8b5a848e1dd8743a43bd80e342ddf619265315203b
Date: Sat, 18 Jun 2022 22:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655589659
