Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2147E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646828484;
	h=To:Subject:From:Message-Id:Date;
	bh=ZXzvk0nlS71Fr7BzacegzsDUPGbUn0rpznUr0RAv1p0=;
	b=ctmDNm4SpiS3BLa07n/PxYH4wZbT/o6lmSUjZpFbWtC28R/8PXjuN4Gu7iVlI7mO
	G9eZfu8wUXH8EEKw64pNW2tXVhc172myuNyVVhI99uloZw0hGi0EVmIXMs3GdV/P6+D
	PgFF+/yUfuEevhR6YYQ+sC1aA5PFqrb2AS3MM264=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646828484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZXzvk0nlS71Fr7BzacegzsDUPGbUn0rpznUr0RAv1p0=;
	b=BHJEeVe2yUxM6a6fCd9iBdD0EzPGq1GS0nh8e+vyjhSk1lL4ArvPeYCQdSF7z9s+
	JaQvbX/EFZ6ddc1vp+chD6B+MQJe0fPvSe7B8mhKzhUb/5hg2O7ILCgiCAhO9W6aTo1
	Hdtx+8FGCEQXBD67O/6UatG90OmJElu82bQaNZyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ea07897-4971ec22-3fe5-450f-93db-75c4fbbc9530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f272e71142d272acf7e427ea0d9c808076f189aa5fb35b95c590b9ee637d357f
Date: Wed, 9 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646828484
