Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A3B7A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657311412;
	h=To:Subject:From:Message-Id:Date;
	bh=XlKd7mCa2VixUBjaSdD0HnnprzO3CqBzrTZW5aP46BE=;
	b=lYQzHOYjWoP5TOlDnRJg5kZ2MwYMfp/C/qjB+gJdfCKs3bSwkq1+EaPAylyZXSoA
	mWKvMsCTySSR1dLWUf3b3hsn7wxLCCA6JdpePABX2AwSwMvpsgAme7faA2w5VyRhBCM
	WS1NSa42HhiywBJPPuN9sW64oyF75HUn0GW0so/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657311412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XlKd7mCa2VixUBjaSdD0HnnprzO3CqBzrTZW5aP46BE=;
	b=boKPhP11XOfL0nHvJcnDn9lGcLWfrOsFM73LTlaM9hPxsumeWzGn13fj7Kc7CYPF
	HHZklgqKS6nyJavf4vbl2jeaafJOYNW0YrhUD0hXl7quo9Rcc4O/5XppS16I1L1eVOp
	ryA59iuE9QTrQvUaSAKRMgHH2qcE2Zi6TnNbi6k8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df754041-a29cb11f-baf6-4ddf-8699-25e944ad3b01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d561ee1d0134f20f805f0b3e7637a86a63821fe8a555face2572901ae66d4419
Date: Fri, 8 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657311412
