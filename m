Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1378E2F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656255412;
	h=To:Subject:From:Message-Id:Date;
	bh=cieViSM+KM3QuGCrZrxHRZvdDz4qHN3II508NqSGoxs=;
	b=T8DvveeFXyt+EvL81pIPFpdl9NOT8hScwz9eT3Y3yfXVhstkwhzhTsunxK7iH8Pt
	WmlXe9Mb3RQczTd/28qXsnCB4S8ps28yrjyjFfr+yElf5gq7AYPyc+Allch8MHfmCZf
	UkkHRokETieQ+79bj6sVVYAa3N3tsNC1Qyju01P8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656255412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cieViSM+KM3QuGCrZrxHRZvdDz4qHN3II508NqSGoxs=;
	b=fpm9DqvuN86k/CWTmHliis+XFLKhYRitBBjA35ceRKHkkC9P32Oio913jDM/sUOY
	opxP3QOgUPNk0ZwAKNd90VQEd4aoYgDXTl0yOIb0fZBFMuwHGuadRTfKD1fyXfIcoTE
	jmVkrTnHEYoUejDkyR23VIwAPU94IMBbHHA8IAMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a083f87a-6d7f6d0a-6ad4-4d83-a2bc-8aeed8dfd6d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5b47c3dc64fbbb235e30df6a271dc519b7d56efbccd22df1fd662efa4ece48d
Date: Sun, 26 Jun 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656255412
