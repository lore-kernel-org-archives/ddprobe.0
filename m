Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D461CEE86
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736027154; cv=none; b=jXO2NFtbEULy+10rNk1UjujGc1Q4DFmmRzrk4bAb02iRmzLKA7W7P5tuD27/UGzCxs9NhE8B7qT9jgXpO8JA0WX4ytRoJUXvY6tHnkA4qq8BhvrdZx2Mb1JZb+ViF5U66Ud/c4dpyzoBnpd8ggT6hh2ombdLcXCJagUeldigX9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736027154; c=relaxed/simple;
	bh=xpU4S3Bf/BUQCpDQ8zMUBvPwDX/b64+cC8U3bmQydqY=;
	h=To:Subject:From:Message-Id:Date; b=ijz86v2wEl4l5aXdRU3B0op7S/ScOqUxxMNwnLKQPdlhX/wq6RH42fk7I0LLsiIq8dIlNS1TAO/UlBedEmm/BSWWZJ3OOfNDb3zRqi32WIO+5VJn7jrp/qQ0v9c4GLP+F6wJyqvxwgFvJKXC/9bSnnWkIct50Bm7JFZuw7X61+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIEUb4Ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIEUb4Ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E58C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736027153;
	bh=xpU4S3Bf/BUQCpDQ8zMUBvPwDX/b64+cC8U3bmQydqY=;
	h=To:Subject:From:Date:From;
	b=PIEUb4NyUDSNd9CUQZtVLCqXhWcUbCc5hmd6nLinJ+q86C9jnoDtEbvrWB1qUTQlE
	 fcHm94iivGTZRUkVt/t1haWnkATlryYZdPeVWKH40Aeki1EeduqVJAVq8ACJ7YbO5J
	 9dYAKMcBE67eprgtEg3cHS+4AEkL6oOZ2GwTEl/ZK720u2evjDXnaF1cqDh5OiBfle
	 JdfwcnSxrVCmPZru4mx9uqWSGw+ruobUpP9301nt2qocRqbTzKwGGag1eYm3o13vcl
	 KsoeIigOjke2VUMjUjdD687CS8qxgZXthZ5qDRtjS1nCZrBAShcZG6hWEruZ+2j1nv
	 qzZQSx7DAy3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EB0E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602715366.28129.324674600372441338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58bcb864fd822e03689714610499e81b14a9bc7335e26f7c257a9ea618f5244
Date: Sat, 04 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736027153
