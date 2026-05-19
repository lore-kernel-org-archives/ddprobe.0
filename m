Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE0C3B3899
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779222634; cv=none; b=J/P3dZsya1+KSkee7qUCfHqgJlsBLMQaDvSkGOsM8yFK6ydkTTTlZrZbTJnw/+hTPwe5uZMY1NdHCkTscQ+Pg5lPj1LaX3KjLA9lAtm0j3aekoYP4KKzOSHhaA7IGK41SZ5WOGeJMwgeWeegIYQCytUroZYfrH1l9cgj+qb+XeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779222634; c=relaxed/simple;
	bh=oROMDbUq8J5cID+5fQIVzxu4/qDFzh1pjL8FpGq3I30=;
	h=To:Subject:From:Message-Id:Date; b=OgdSaZFMwPtNbAHZRkt2e5638DP1HbsZcmdO+9EfjQfFG5fOwqu+HguOB6bgwPtro924Lqdnf6MFYElFcpLh5gxCjh5aPTOUFxxMTKqOJuZA3CUldAoPrc4ms07qb6Q59IDKxsAcC86FPOGX6dtgNK+H3kOTIR79Mn1vFZB+6QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIUE+92R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIUE+92R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92C8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779222633;
	bh=oROMDbUq8J5cID+5fQIVzxu4/qDFzh1pjL8FpGq3I30=;
	h=To:Subject:From:Date:From;
	b=eIUE+92RmZ2O5eJOXo1ZWoIK1mUPY0IL34/S/3HZHbc/uCJUdpRw0J1IFmkLVK7Uu
	 MhojUAKytpEAUUTKoma3/doZ4RMiEUPcrM76sMs31f+0SdOKrkAa3YyLXZYSkB2By9
	 1wSxz0/CT6gOc1aiP0+nmUOlE0ZHg7LuDnG1Tbp9V4qxNdr1TqQArEUD8Yd4SnylGa
	 XnV8oaf5v6BMkznl8VJ6uf4mGn7rw41cJwdwzlXBGbe5jyUJ/AGkliHwMzHMz5UkSm
	 IZQvkL8gLwdEWStao/KerbxZAMXo/M+vuAY9jS2DimHaovmHjjt1DS22PaxeYzCNOQ
	 SeJavFDfaw0oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BF9CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922263369.28440.4220909274827218741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1cf2e7fec3bbff1cf7a8b2c2ff96df45331cf6fe6ad622763ea994ce861cbd
Date: Tue, 19 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779222633
