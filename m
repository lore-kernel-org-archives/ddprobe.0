Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C5F2F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653067079;
	h=To:Subject:From:Message-Id:Date;
	bh=/Jq+SI4L6lL8vVa7+9B8iN7yiltlpBQH/BMo55XDzsM=;
	b=cKFMVDSxok405yu8iy+bHkT/hSDUnB2bnR9fEQsn13zyfbhZaQS4ACOGrks+f5MV
	SdnNrWsd7/LD14AOQm9m914kHlOky5UOYBFo6y9ErJkThQ7WwFEx8rjRRIlVRGifQJa
	2Wli6ddS5aRxC8MswOeIYCO0IHBbRqquGn1UZJ9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653067079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Jq+SI4L6lL8vVa7+9B8iN7yiltlpBQH/BMo55XDzsM=;
	b=XtW+1L6dX5XbU/b+knPpyE0Sj1oMSJfFLnN0RmmjD2EnpZg1K/W4l0Z/VXt/H2XD
	hO2IhtQUC0SiJ0xopvt//heFvrdAbWWL0qb9ox+vc+yYdWvZ/cLCVHcF+lGkYd4PUkN
	4mzyLLXORW+6KS05govabO1Ej+Tgp55NpAc2XHas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e279de66-22f10c14-93ae-496c-b13c-df65cf0e0ae7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb21a9fea96bbb93a992917806fcb75bd2297246376a7d01c429bbd6dcd43e43
Date: Fri, 20 May 2022 17:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653067079
