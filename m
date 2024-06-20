Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CEB22331
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718902823; cv=none; b=pV9aKIJC/+V6xH+Gx8ICS36fYej0ELm2piPlXZJCPbqMYZaiGs6z399dEoh9SvXGCPhhwckYeupFLrBgjVwbjmC5+rk5PyAbNrVRU3V0HEXptIetRUma6NWJFxt8sYTmm6IJE+T1dWejQZ2+8IvMg5cUTOKXHbzrWfOywXhWUvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718902823; c=relaxed/simple;
	bh=LDVAmLkyE3CYYMlh2z9c2Vt5deXX/QZKAOqWzoiERhU=;
	h=To:Subject:From:Message-Id:Date; b=ROTCndEanFjx+kfBmV7EFD+HX2i3kOg2BZC7G56ryZIFQaqcugFmAowMjr0QGmE5VF1FipH5559+1u7/ITK11cwrAnEoaKXaRv3GwYTtGWMzFflPWozKqKJ3q9qnhwpJGPz/gWNOUOOiDvjtpvLobW73DJlF4TeC95EfjXJYSug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNmu/7aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNmu/7aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ECFC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718902822;
	bh=LDVAmLkyE3CYYMlh2z9c2Vt5deXX/QZKAOqWzoiERhU=;
	h=To:Subject:From:Date:From;
	b=NNmu/7aOJjHEIj5eXi87KeDk6TgR8Cm4SiR6sb5/FG4fA9qoBQc6bSlUFKlTBdciZ
	 +cmifc3b3lEWIT+h6X3HXafjZ/wrAAixg0gEi1O7KmrIDwTriBmh3GWdkboS5SgC+s
	 H/oDtnaiTdYWYWQ/J/G2AqtEIA8feNXqhIGcfWa8gYQr8ZVQzVk9JUV+mzxzsUBWRB
	 EvZnfi1sXFFcClOkahmKmnUzpdw64xUI5r0W+0bT6RWfYONdmrodPsr5oFoJXqiM2k
	 7mlMNEj1AZuInuTvaP5QIu0Vk2vhxd/v9xDG8uKvkK9PtI++lw1fuHY6EJnUyAvXi5
	 IDEvcrrN7DFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70A2C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890282280.5405.6066463324693164251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47148ec65f4bbb4ccec8a22e132568ac7c7b24cca78561fd390da362e51d89e
Date: Thu, 20 Jun 2024 17:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718902822
