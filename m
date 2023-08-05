Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A1017C6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 05:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D995DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691214188;
	bh=jh4YI68yIMWFN9sHaaZeovxquYnpx238TJzzs45kVC4=;
	h=To:Subject:From:Date:From;
	b=enWeyvefbDmUgHGETax5BJ3lf0bkotKNpxXSedkr/MN2g7ojcfhbtxKQNiymz4Oli
	 KEO8nfQOqDWZa+A7e9NkAZHowZ/N2kWRXpILV3tE/HlZjvQ0MN4U0T2QUkHESfqbAh
	 GrlfVL/FaBntcOuRkiR7W5va6sVhEoyratqerPquWPeUN5D/kWFxGFIXu3VyIG56DA
	 9akG9d+VLA4VkVwyDw2WfHoU6E+cmbakg4NTuaMd2114jGXIqR4YXHajPtMXnM6cdI
	 /iXsq2sewEUnAF9nknBnx61qBJHaS+TMBqddk+126YiMfZrryehhJEOdpljv1Asr18
	 oULBMwXHtnQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE271EB64DD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169121418871.17665.1724469656972291982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1048d212ea1872f1add33385170e387d9062dda40c504b07704bba20921fc328
Date: Sat, 05 Aug 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691214188
