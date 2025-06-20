Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F028A400
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750421394; cv=none; b=YPWcqfKjU45x/Yh8XkNnXeBrhnCzujAIKWBZpUq7UnR9twhTw0pE7QvBplT6LbKHfG2Bw/H2cAStYG1tYGEAhUH4eiWqv1GbMF8BsALlVH2LtQI5NbVG6Ob1LwtcKOm1VXPelpJNRXTstHVRHm6D5N4j6YKfCDTU8J83QU2wJkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750421394; c=relaxed/simple;
	bh=oIVotvr66GDe/EhdIox9RbCqRHqXdw7y4u0NXSJXShM=;
	h=To:Subject:From:Message-Id:Date; b=C45THJttib+dQECJFsWcdQmEkP7m5YQnhKXqCt4+Ghfxzd3VNfdFNuUqoCPvT4i/gq+45z5cWvx6ubq6ZdxHUML6xs6m3LkJgBvQBR9g7GzY5Sdrgw7eZzehx5jMg1q7L61vZh1ZOcqI5MeBsBFH8uX16fhtwF36SxuNitIIlKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTTR0dy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTTR0dy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F8C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750421393;
	bh=oIVotvr66GDe/EhdIox9RbCqRHqXdw7y4u0NXSJXShM=;
	h=To:Subject:From:Date:From;
	b=OTTR0dy0KBZldKylpMj69aeuIwY4XLn/c1FuOPRbJ5xDJOX9cp2I7vpgganzer50S
	 mcgFa8MLvb72l1sR6iHrSvpBZLZcTpEXfL9HtVKzZT8BO55ra9lrAjNzfOY+1wy1Ka
	 MzOByJHrVznJMvJBhyZyyqAjg+p/wafiuytPOtQzpxaxqmQ0vWt78wXqD9MtbJFiMW
	 1Q6tmKzObv+GPo+dR1Q+Sb8qKXmJP6CqqzWV7Y4zCC/xJsxqIcoKLoCoeuxqX5hD8P
	 175XVq8KOgCpvhOlNS8KPDgvYESXK5KnxxFUgiMXHKzQyd7ZxOMcxVjgD8p6w+t739
	 55sA7/gmFKe0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BCC7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042139358.30054.4080488061997917745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb593b3fdad2eb71641ab9558dfca933d4b7a647b20e9cedf515a23bb470507a
Date: Fri, 20 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750421393
