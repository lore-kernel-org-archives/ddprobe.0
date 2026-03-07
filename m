Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C71330B2F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772881494; cv=none; b=RpjXnEvlQ7kbr14KIk9cyz1HdoM9EweU7qD9bijtpPNrhTHZiRZNyPQNo/EyUyJkKf46Hgc7902JTotK909Lhllw6i7Gjad+vhEbSDo2cCxAWatIA6U2I6aje9GeuuHiY9AJ09Dlejt9CmAmxHOH3+v+4GwbgsRBjj9/+xdilpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772881494; c=relaxed/simple;
	bh=OGDZ2gpn+K3UsFHVq/Vzlk/S7XPgDyhs/nSfr8GQZBQ=;
	h=To:Subject:From:Message-Id:Date; b=IQEGWD4p5OqEnM10fklR7EohL/7oR8TuSub4mbOX5g6iJOwT1b3aHdgIDMI0iFfuW9G4fKUwmNGHa7TUHFfYh1vXZpl7rdnUqhLxdn5NgCmJG8+XQzYUUU2+JohgQtrBixmJMdk0iQGc1o4sEj5uk3gzuukzB0mvrmZDA0mLcdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRwFyxWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRwFyxWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D391BC2BC86
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772881493;
	bh=OGDZ2gpn+K3UsFHVq/Vzlk/S7XPgDyhs/nSfr8GQZBQ=;
	h=To:Subject:From:Date:From;
	b=ZRwFyxWILjJ8/jXf9RmWCa8ITLQmvUlpoP8B9FiINx68UneYBhOC3huIFdwNGQ4TI
	 zBilgqBQNqVE/nfaK0lC5bEUcDmin6GC1D5Hwrwn61O8KN3G91NIeJKookkeLQQi3J
	 A+O5FMG/xZy22Hi0Q6z3+nPVIqljdN8cZvoK1YmKnIubZWTGuiptoh6grCXiysrz/2
	 FdIEN6JEluxWQ7lQhG9O/ifGvuwNCAQGHf0dq2wWh41+aau7TEJXktnqBAaZVxRBzj
	 y7DI22S9xlTGLGsPa0p9rHjqGNm6P37c5mJCSJx3OhY9ZoMLWdi1fBeK2HdPQXp5vZ
	 A0UcokXn3bZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA5BFC9EF4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288149370.6165.2179171659095310761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d68e750b69a3b51f6f3cab463fdc824642322ff645ee3d1c36418418d74d7a
Date: Sat, 07 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772881493
