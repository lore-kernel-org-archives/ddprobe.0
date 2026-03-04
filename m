Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A9D386425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772614494; cv=none; b=Y9CtpwqnoXwJKiaZe00U6e0fvanrnhed6ungg69tB8RgI5ccORZy9RSRwuGyQ/9R9Jw548JKmGI6o/Ouij0g2X701Im/f7xOj1IiVlmCmmAqxNlUlvZRajM6lDvK8CFPv4Vn9zTUSecrmwWxxbkyYsJVR7kGQESe8oJQYy4uY7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772614494; c=relaxed/simple;
	bh=VIC4738uQbl1gM/h0DqnK7qvX2LJY/Tj1cEpP3gZ0xQ=;
	h=To:Subject:From:Message-Id:Date; b=IVKjvsfpzXvMUQqIpIxGXnBkt+hA6Kag/0L5EOIjP5MTH2iMJyedxZPP2T8KK+Xb2iFzyMX2Nzl4EtXMuZVg5yCNBXMN6RQ/ErBXvX91VUBvw38i/F9KFKBOx1ArCbu94Bl1+ocSPTkRnzoRpCNJW253eIOX0ha4SeifVb3uZRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoOAMiI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoOAMiI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB692C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772614493;
	bh=VIC4738uQbl1gM/h0DqnK7qvX2LJY/Tj1cEpP3gZ0xQ=;
	h=To:Subject:From:Date:From;
	b=DoOAMiI/tG0Hhj5dbYcjSUEQzIk7zymr5xENiQDgcRoUXYGxrNii8gkCcC8cJ3ynZ
	 Gf8b4pWl/FmA3XrfEJxw7pDBgGGKCA79X6g9DXXBwro7L+GNxk9ADVRPMJD/tPqlF5
	 H0UHzJOjm6Ac6oBdmPdZrgkDQcRuprbwzOQPPkZBE5xobo8rRr4TV1TGm3/r7kyL4L
	 9o/6U2SSMn8hUX8O41NJvZpDgTL0gkFe6PftSZOHxb/W2VNx790Nmkq+z+HUuYpnmE
	 i1T8NojNKmXOM8g8imNbyqXhf/3LTigR2MBbhGdAOkTrAgpFn+VEpZUBYlqbtfsOIQ
	 wof2S4ck7SDlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B162AEB7EAC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261449371.6084.11175593237328645703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effe2656ee289aae10a232907c173ce751612d92f725420b0bbe29b7182344eb
Date: Wed, 04 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772614493
