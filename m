Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B82C19BBC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750522794; cv=none; b=kdYhTPiKztb8eDmTQSXIV66Jar+h6KRIAMczEWIldDDSH//QAtYVvylmZ8CqpOGKQNUuE7UUZhx9WeHq7Wa0ufg+Yv8lWJp5TEKUS6yvCYrpdcM7sLPiOgJObryTtc9/VOpstu6q78YPjAt52ts5AYMcjFqvFKQ/GgISZx72Vn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750522794; c=relaxed/simple;
	bh=7Xzt+KZyn2g1g7UMZTHwlj3AAumldgOGLAAbRYIB64Q=;
	h=To:Subject:From:Message-Id:Date; b=GWi6sz3zR/DMN/O/k13mjyYA3Q/0fHPo7T0s5EHaTMzDOa884KFGQdtNqkuBo61VZqaYlm332cL3IiS38klgQAsg+wqI4JvdVi6/7Jb2NTVVwxrS6kCkKPGdzLHtC/MiOhFhmjsP7PwcWzdo6QYzsxJb2H60+zNz1UwMCSZoELg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN2puvjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN2puvjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4018C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750522793;
	bh=7Xzt+KZyn2g1g7UMZTHwlj3AAumldgOGLAAbRYIB64Q=;
	h=To:Subject:From:Date:From;
	b=MN2puvjveyaOxnRe2Pz3K2gYluzNOgejVIj5v48jQVfIcojy3Q22jk3Jy4T0vlQuA
	 IRA9PvJBL5eoaYBAzec69G4l8L9ud9Dva5Fx3tBKdGvgPqOKDI7/pXM304ID0W/hqn
	 yxAp7WUKuYwYK5sK7Fm32XP6eRckp4PmWDvKsUQ8m4soIIlMRjNB9eOyaMG1qHa/p3
	 2IuZZdjvEtbXzOo6fhEqe/vhS6zCX+tMW9VCSf5kNt4aeolC9oGY8M9goZ7gZ+BBfO
	 l7uuRhUh6Dxaj1+IIyFT6J7SMvkRo3UtuSbXV9KP/SL15EP8CNyUSc6WPY2SZ5sB5F
	 ldP2wiIqYi02g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B14C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052279357.14634.2604735036695125794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0647115e23cc9ce4e757f510334688b295c3e81222d9fc388e2c59d85aa16b0c
Date: Sat, 21 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750522793
