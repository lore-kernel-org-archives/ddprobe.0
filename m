Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C695301465
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772184294; cv=none; b=FU15lXwuokmolRctAGvRYfMOyRSq9+EIzJKEYf7I0y8auZTjW9F0XrsBkOq+ZQWll0OoIayd60ka/Ow6xm7bypnds5r3xJC/2i4v4FbM+Xop9ntrv8w9N3Y1cd/yJWYe3EKvauFgy/kyuckEICf8fBrOWXlL+yhoFiDX/WbaGR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772184294; c=relaxed/simple;
	bh=NhX4U4Yy6gbkdsQ54oEIZB8w8Uqcq3ZJeoz7OBE5FDY=;
	h=To:Subject:From:Message-Id:Date; b=ub3sO6gLLTAqVSEFCEN6aMN57oUJSk1VdKcNnbs+W5l/LqrkOHT2S+kc0/kFWBAkzdE0erwfyxj4Q5pNN5PwGlppXSuAqSKJueD9yNs3FdIP+iXoYUmRI5uApVjBeP7j3qFyqikH7/+6YmYFnSPraQUD2te/6qgt2hn4OgnJkPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWf/gX+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWf/gX+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B137CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772184293;
	bh=NhX4U4Yy6gbkdsQ54oEIZB8w8Uqcq3ZJeoz7OBE5FDY=;
	h=To:Subject:From:Date:From;
	b=PWf/gX+ogGL2lNMAhqRMRDsEOnV83KsMVNAZkSBSHXMvDRsCUUuBXnKdFnEevvs6H
	 3E6EHa72xRyb9NkCPNH4l/wRDulduq6HWB40V2sHHozUrdvs2Or9EKWjBkSAAt/Bb7
	 h6fymGKzDq36PVNB1F8XdXuY6vuD+QBqA8OgcR4865mW/ddJcpyfvX+MuuFj7aIwH8
	 YrVTBtR1deuow6mwNIZdS6Tsu1sszMDO6IQvGOdHp7egamuqrNYPd+yn+QXoTloQuR
	 wHquIwUj/m7SonicbsCa8/9h4RlNuVt45rF13RSHONjSUiN6rrFNpvsjc1NlFBOXe2
	 clh4AqqdS7aLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9880DFD531E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218429361.5021.7288851972966011544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5a07a561061423ee8cfb2f0629922f06b744d4888ffaa694d0130ca25f35fb
Date: Fri, 27 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772184293
