Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0147B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 17:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B779C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 17:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678554906;
	bh=AqoyGq7oZcLxHZcKNJoJrATB4Y90FlklCXlPo2TXQkI=;
	h=To:Subject:From:Date:From;
	b=eyjtVHAvvo8G8HQjI82rFQqTDCXKNoJ8Humy8KWnzZyoW3h+Tu1fBY0lMP8hxscYF
	 +myXgoVWiNZAsJSDczGG01tcukRddxbbTb96D+Z0wOqLhJd4I37GjaNLNJ01T14618
	 TQ5XuigXgw9EG/xUElzUFRAc8iBkyEVkZ4eIoD9lQf5AoLwb0hM7Uu0eKNNTjBjrQ8
	 wntiRO/E4F0PejnWf1UGivx0mTva+TVvWI8T+hCp8lShOGtWoVhzKORJgO/L3eg0Wp
	 Jl9vcR4VG0DwkJZVi55HnIJmepPE5+KoYf34gD9xom0a+6EcNPI+BijdbXQp5NR0hb
	 N0gC5gU9cpvMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AEAAC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 17:15:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167855490603.24545.11486768107931183123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3f3061fa98bbcd593ab154d346148e883b5cbc45d2b37343e083a45db201f2
Date: Sat, 11 Mar 2023 17:15:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678554906
