Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55D35CBC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B15C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669397454;
	bh=8zw9WioSjffIz4aTh9MSPrPvEkN0RucpmEQgT9JAODs=;
	h=To:Subject:From:Date:From;
	b=CDtuLHJQrJANFx11rIJ6pLHl/PZ28YUiHZeQVhhscZEICiR5+QJx6ZlFID0LeheHa
	 6065MWqlL4XD6vUBlcUthpm5z5FY9+Rd5Ggzx3siQ3n/H7gEenQolbUwsSCfMymmlX
	 HTI3EKImUsQ4u/IBei2Wwdp5JWJapQtoqJjntCorP0f+AqhJgkVDWCS5qcOUYufrEf
	 L+aB5EpQDgstlmR/HWk3wvasKqAbZXd3C+y7uVUkZSww7ZbYBu8kk0I8r47wPsMJAU
	 PR1O3NsDNwoG2CMPciwtxdyVqU00Gd6y2pvg7FqjCC0mYQMCenMtG3JmQpSSbMs4uD
	 HKkjWJxw6y6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A9E9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939745436.11594.10943351181553773252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c217a162fa46328bd5f1cf8a1c9e6a17bd409f42b26f6ab3a3de2ecdb11b65
Date: Fri, 25 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669397454
