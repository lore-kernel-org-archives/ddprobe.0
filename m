Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E7923D7
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726958754; cv=none; b=u+pj44tXOoiNzDJqNyfmnqwMhDLEH23dTleDmDv9oqAuLcmEo+e5Mefem9wDjgqArQWoJ9JpMADXmHf/LtrC8ho1gA+C8zmubHEFqOcc+Ri6XXpdYSYvapMSD5QfhxL9oPmQkUtk3VfTm1hJMDzyOZYzBdqnAmX8nkL3rFznibI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726958754; c=relaxed/simple;
	bh=vzoO5Ub9iAOPz37KHKhLRQE6zFfQpVDZVlAZ37i+bxQ=;
	h=To:Subject:From:Message-Id:Date; b=au5WgJBoXET4ISa+8QKg4E3BYlpGdvRoIb0HQvPjTSB2L5Qil+ERbWpIQt5Q0hc2kd5PS5j/7zVciUtbxbLnZSHu2iAhURALXt5hpFsyCLwm14ZnqXc+rkzMo8H/dBS6uSlzeLPuKQMKvsW0ZugyzYsaQkpFOHiu2jv4QLFAM94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2ZT4vhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2ZT4vhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB2FC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726958753;
	bh=vzoO5Ub9iAOPz37KHKhLRQE6zFfQpVDZVlAZ37i+bxQ=;
	h=To:Subject:From:Date:From;
	b=L2ZT4vhuj278JEYu9pudLS5hy/PLA10xD1DXZj9PvQgWsW+NJfBHQyNHIdbxOAQ6B
	 v3ewrGDWawRZ1lZSu9FBQfnOW41MMTCsivlsQwGdhPmM1zT2kWgKfdiIVCHnbXbBHb
	 Mppen2ahIuw+yMqeYTJRmBjJdguB9R42nLwi23w7GTdg0ZVYUoAZ6hAy7hj4LDuKvq
	 Pv3M4oI2mew2rRmTJX+kq1+2BQGWSOXm429zwxUt4Biqg6jpPci9AsA6zLhlq2fZH+
	 eFubpaY5zdQJi7cbMiRD3aeTl8yyjMJRD93FqmUdh22GFad3czoqhXGklAi5dWLHMb
	 ILKQnpqCLMDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B7ACF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695875358.17004.8314235476620306262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90af1ae42db7f6176de81add4767d2c2592510924dcc62960880b765708967ae
Date: Sat, 21 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726958753
