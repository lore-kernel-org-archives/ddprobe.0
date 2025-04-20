Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EEE20C028
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745170794; cv=none; b=N//3ejwRFAV/d6pzlBUP4BejyHOjfD73KIMcR0Dakc0fl0Y3rvPYd6rmq0G+yij65QJAubVXdCtLtg9YX+3qeVGaN9e/Xj/bKW5YqCOJt2PFKUFzs3mgt6Hhox2uJoW/gv6LiY3hfYMoGFt+urqBc3AkH5WQnLE9Fhll5IyciDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745170794; c=relaxed/simple;
	bh=3h04jheWABjH4+mHAEywFU8mzDDzf9v3gv/7NBqfZis=;
	h=To:Subject:From:Message-Id:Date; b=jwjr8MTJXGehpre4J3nMjOxtyPJ+nFkJtv7nZhBiIC3Z5dBbFyqt9vebsnnbOKTaxcl6mtDyMVSIVn/B0wRGyTsPtkAMVZF+X7vi/MQUPdZwrcAEhRCJUCY2D+d39L4AMcxnde62AaiK3tk/McihFW6YUYGwatGx8LJcwhDwiZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQsAWuhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQsAWuhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24ECC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745170793;
	bh=3h04jheWABjH4+mHAEywFU8mzDDzf9v3gv/7NBqfZis=;
	h=To:Subject:From:Date:From;
	b=TQsAWuhQPI8qmpgCF5qJh3yb+tGVbTnpNdoT2cCzW1guXwWpw67TuvqNijLERGnqi
	 0tOaI3H/A87a+YcqAjijegc5a0U+Lp5DLO95zP3YGVG5U56jGdVWL3NTHd2/pum7Co
	 V5LDxQkBnqGKyPGb+2bo9gFpU+p/c5TJ/ye5V2MAXbSnjzrnmuMzT1QCRcemOyBdAU
	 E4BKsFUOZyHHVNd2DcuhtVQifjL0vM8NCdSPEfxNByxsQJ+gzyERdBtzWUUFrAvSEg
	 X7lAWXUHQ2VTVsbWQ0/W+o7mnO8XbWBUTn37Md55hdqVu827/0JnZPjJXp56zD0jkP
	 S+XLlhLbTHhGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9EAC369D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517079367.28452.11830278407891995866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48b2767ee0fab46e9678db676d111fd0184a8c98e77dd2725699da7e80b7971
Date: Sun, 20 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745170793
