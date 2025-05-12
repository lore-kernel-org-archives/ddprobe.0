Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7B18035
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747026594; cv=none; b=doO+0dtZbY5e+UuMh1ZfJ2jlePO7PN1kOVmhESts8ukQ4qMlWzvrrKh6ndsHJb8dmXy5YeQ6deGDVigfXxsnJZcZUJUZgzRjoCiBH98MdcujL8Uu7ActVBfb0eXfmo5E6tFyII0UfIjypCM34VhBdxMO4nE0lyyNBWNnZhJTYrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747026594; c=relaxed/simple;
	bh=mb3wejUBsU9zPwCsiBCHCce2wSUcX5w+tCEjKhjxd4U=;
	h=To:Subject:From:Message-Id:Date; b=JFUV8LVw3Y8y/HAw1HQFw/sRBn8wneYvPxXELhDtwKXw5o9TYBg5QlwwOgTG6HSVb+kNDDnH7zfuua/IsKl80j13+A4JmWmQgOd2n9R952t9R4ESqd+eGL7ktdO/deAxmY1qFMfki9bXvXTt8TArIwrBJrHOroaP214FNLkVHbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOKFbNwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOKFbNwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DBFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747026593;
	bh=mb3wejUBsU9zPwCsiBCHCce2wSUcX5w+tCEjKhjxd4U=;
	h=To:Subject:From:Date:From;
	b=qOKFbNwFHQwzQadlxN9JNqwZ7NHU/BLC3KyOTt/WbirsYOhTpfei31VrYcV34ipX6
	 YOf2FeK5sF/a5BmoDwVAbA/WQmu3RBavzmpH8wqn8SI6CIHduOQaOt18/2ju8FyIYd
	 w60AmyY3R0mLpTNIilOnQzLf5bRoheQPfTCxAQe4dC7jzWxoZYIo7ItmzXyIhcm/b+
	 Z+iySqU4dwobaAEXcym5tV+75L94psHab8eiqTznHrnLAt9HXdZd0Gm5fEl6c3On4g
	 vnN7holu0n262J3Hob64ZbZhrfNGCDPTQ8ELcgqnYPbvBkp+v5thEgngpjXgb74gXY
	 ZMguHbfT7Jv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F5C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702659357.20443.4001192823720501364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ea219010569d30b5e1d11128dd57673cdae3f2a2763313b7053ac9fe636d83
Date: Mon, 12 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747026593
