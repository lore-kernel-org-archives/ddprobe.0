Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A9F210D
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657092412;
	h=To:Subject:From:Message-Id:Date;
	bh=kEauOt9Zazi042ls6lni+vDggKNF0OLDlQ5zYUFCwqw=;
	b=NnW9byUbj4i2CvgOoPGrIWYitsuQU03YawvuzcqVujnqfbsALuxOsyXoeeEP7gVZ
	tvKxkoXi/rXYc+3Ah6+dU48uiQyTs07Q1kWxBgSp9kGk9Vj1xLj99E6dbqEwtUDJshB
	uyyseywjYBiraRn8qpL13qA2Sk5DeRVCjfPadU1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657092412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kEauOt9Zazi042ls6lni+vDggKNF0OLDlQ5zYUFCwqw=;
	b=HVoRm/49mb+D7RTqAIw1F/0E49fWtGYtHX/5IU+8DJArOctysnEFqGsAV4pCIMua
	Vrh1yKc9H16luRWK264/V8viDc9KDzA/1k8yWQRRTtMT1SJ3R8JQ+vqkXA8WZYgJFLC
	hBMgvdMCrD/bIAfG+eZyI13UKYXsIRHEMOSL8UAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2679377-eb2477db-f9cb-4a11-b65e-3e0a9b58e623-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd3f89c43a33402c93ce47f0c177eeeac1bd39dc41d02a27886a97c9790a3af7
Date: Wed, 6 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657092412
