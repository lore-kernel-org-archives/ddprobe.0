Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AAC212FA1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737651954; cv=none; b=O46zAb8WfvWF4LFQaj7Z7qF15vYBJu7hR8W1UJ/17e4lU1fB8M+9I1VK/IyqJfvybEKrAtZ11TwTZbLlgHOawF66rvFPRK2ln/BlO4jTzmmsXqez6aR8vk4iRHhqXAOlFVzKbP9mgvvI3jPSR2EQbINV0/3XaAl52zJRKT+tctc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737651954; c=relaxed/simple;
	bh=F/Gk77drqdj8TdZf2OOyxEDYF3md9IpzzB1HmJyBXkA=;
	h=To:Subject:From:Message-Id:Date; b=cGmq4v9DFnDhzRyuESXQ7W5z+f1VIlby2zT7TFXE97xtx00BrOVrIK5/a6C7so4AC47Q9rrhpP8ey2U5UdMZHs6UE/FUBXBiWBOGpWaVDJqcQe0iPgIj5DLhpzVIWshSyN6v2LsUN45tptDYZh4DdM2xFOHbxv47RzwdhrO0fG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvE4OG5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvE4OG5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF56BC4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737651953;
	bh=F/Gk77drqdj8TdZf2OOyxEDYF3md9IpzzB1HmJyBXkA=;
	h=To:Subject:From:Date:From;
	b=bvE4OG5xNWOeh2yk+C69F8qgi4nRm0dFreh0MPzE0vG5k2FpHy7Wa0qZz3ATjO1Tq
	 vPIxmyZYxcm/VQuzM3ueMcNcMK2+MynuRGA8kVB2osJJA+Gi+N1apAt5wkd0TIKW2M
	 oKdZzghMm0njMZBmneud84a6x4bKTLZsg3MEDsFO8rpOtvGNTM+RXFDfAQi7jYCiRD
	 N8/xljlG1ahrEdF5CYHobx/oPn3p2z9hi0mhMgIKjtp3pQWpcqu0qy6ZrO00nOk1ot
	 8lWxktIUEPxNwR5JfhGvNKDRKPS1vKhzA3z4msjXjEO+7uFd8X/z8baQusWFy/3EfV
	 kdjpELWmo8w1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C903C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765195363.7806.3000751922276327232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3f113a55379eb81ef287f173131ef4bcca8fd16c34645e72584c46a2635448
Date: Thu, 23 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737651953
