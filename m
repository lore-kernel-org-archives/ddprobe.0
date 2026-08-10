Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE043AFB03
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786354834; cv=none; b=SvlSmqAzrgX3p8SA7mA+YkNhV5yPQIZSRPVQK3WiXr1xUdnb0rCWDtgEFBUa1IQBtSOVIcbxpPVn73CIYhcNvGLLrEGxUjWoRYpDIDPlXG6+vq3GbLX3Wc3D5uEbMXZVhppboz/X0Wg+JONwfkDnECnRIzsRrReRmhDEF4D6k30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786354834; c=relaxed/simple;
	bh=VwFLl2yPsX/O8eupt2QFbWLUOHTJzvYPiCxJSbt8IXk=;
	h=To:Subject:From:Message-Id:Date; b=GjzDZIrvEUt6Q6sdBjuKpf4dXGrGatbKATtNyUgbKFagLpceQdZiABuyFGVUM7zoxXYDnDThRdIqYEDfNBqQQVkh542DwNBKGOeV5tXzJ/OC3++aY1opVvMS/K2ek/vmeSAfEYYO6cy1ZoTWqE3+GnRPCIzBv7q+zWAiZ1nsSuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTOcgIS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTOcgIS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9989C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786354833;
	bh=VwFLl2yPsX/O8eupt2QFbWLUOHTJzvYPiCxJSbt8IXk=;
	h=To:Subject:From:Date:From;
	b=FTOcgIS5Frk4Z0vfxmiQbtAowL5kEUJ2MUEc0GuB8e0Nx6RqUSfKOpJ/0468E/b4d
	 yhEwz8l9C+uAZmUaTfMtwqjEeyJa+rdi+oSEaaVEL8hQ7yIUf5D0LhInugyHKVj0+D
	 QGHEI9TdkVNyTezSwf0UWO35s6sfu7Qh/kVrz1aMMjq2lgTTXe479QpCQ5gvOwzG/C
	 OTHw/fkvZGZ6fZNTO8d7ebzjhr17z/kUIntWfahvH9Prmsicnc0t/eUHd0RlX+2sHR
	 Q9JkzUrmF2LmeGcy0sCtIcRJ8aLMpUTpoBwDycaI7pXak3fZapz3ENrL595FyKg6cc
	 Nz+Nl4mckB+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8107C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635483374.26069.3349760912173696745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3980476e28e58ac107926a48a16634eca6535af2e4dde59898b78d38313435e
Date: Mon, 10 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786354833
