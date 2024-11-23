Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF99182C5
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732381554; cv=none; b=YsnWlo06VL3MRfwp3+WJOL6VyzsufEZ724+TR+xfTOWLGJAQNjgMlV+6Grt8MX9WWPXQLS5gSYhduPx0ixp77HG+EZykBxe/R68KCbN+2Qrm0XIiJhTKYGF0qfsv8fNORReh1SsCGp9IPf61TZKGgI4UvUMxPwTeq1y7AFGLNZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732381554; c=relaxed/simple;
	bh=GqS9MRj5CKlFllKiJJR+PMYXJHsrgvl6+4sdgpDoCmg=;
	h=To:Subject:From:Message-Id:Date; b=RFgqlf7B2BQg5iTutoeWEoRIE5kVXWS+IrqRPWp9HE/3R2SLCyZrYhFos2fI1qQ4nwK6jTUH8izsdHjRjOSP648h3zLSd31r3txtebTjnGtwfIAKb30AUd2sq/6tuuQcEYlt7HyQ3y2jOEq2CkN+kttFelFXnAtH6oPOOOj2lxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEfmZW6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEfmZW6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ECCC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732381553;
	bh=GqS9MRj5CKlFllKiJJR+PMYXJHsrgvl6+4sdgpDoCmg=;
	h=To:Subject:From:Date:From;
	b=oEfmZW6HiixgMHBVyIN1s+AfGYjQwl9sYucKl8YrhmFcMlX3cUjw981PpecuBpyRb
	 7Bc6KnhgEEVdodGBDVnwI88OmAbh5xchqY+nphE8NVWWK/QskXnwJqjvuHOzTrXZI6
	 1L+5+G6t5AjWeGPA7U0o/ezmQzJROaAzN+S/tDnNGtkJoR0+Q8LlyltWuwircrNwTn
	 ea+Hrkb6BAW5MrrKg3D63/CV7YIHJAf6RcNd2wo8fAyKe7T58IGq0aw1tLawGvoRym
	 /F8CKNj3oVbwUIWz0N33e8LC301jZ2mvOOM1aTvWl6ZD/3x8r729YlBojE8DU/ghb6
	 HpXUz1pNw4ZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9455DD75E5C
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238155359.28249.7299239881012950454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a4d8fe098006259339cee750212862cbef5376b6a8dca6e3d9afac786c8f7f
Date: Sat, 23 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732381553
