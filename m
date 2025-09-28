Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D868287E
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759066795; cv=none; b=Lb/9F9irofjtTjFtdz2hOXLqPZvMUvPJsGGsrZS7evHSQ8QdDTfDeYQhax9MVuDDV1JlFg0aIGjVlacXdHwzDM0ljt6ydJ+JfR5lykmZ8PPcuHA1jnCEEhtK7ed7GUW9Z5h9YAPNEpq473hjRJtyIo5H9lgwqXhf2axFQnqGDG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759066795; c=relaxed/simple;
	bh=/LRC+I6gStlW0zNf6B3TJ2cwvXHY/zJPZ5zXvlz52+Q=;
	h=To:Subject:From:Message-Id:Date; b=DJq9BlUHQSJ2ky4q87AnP5W1JFYnZDxiBNKvJxOGbGsVNazf/54de7nIaY8xfWOoQASD/TGNUjA4EAwljrILCxTU2tYplCHGBKOvYZhczxDyf/jn73C1mDExExCHGinBEZ5D/HVmxCu9qf+XmBOS60veJ3Ym5PzXu6NiJMKarlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvvwlFYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvvwlFYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE5C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759066793;
	bh=/LRC+I6gStlW0zNf6B3TJ2cwvXHY/zJPZ5zXvlz52+Q=;
	h=To:Subject:From:Date:From;
	b=gvvwlFYpGm9UtxYI5vunOhdoCqf1JorOwtQmI7fmim10GHkuA+Ej2H8b2JQLCEVdq
	 pe6V6AdO0PuHmGvsFXMBybAGAxU8AaWrtd1itm/m2pj9inXl4XT6QJthkYAUEcc57Y
	 jXLlXzwkFbFEnBSstT1/iQYXhUdSxnV4lhJQ6bWhF9V1IW7ozD7U8N2hRIMFu8i7mI
	 UxdGLqL9VK+BBbf1QUyMVqjjPnJW+jNfupOJYBw+50M/4tKKAZUp22smKuaRN6Mo4V
	 14AueexiiPh8tspKbrgmHVeGMsg4VtnB/YPn5E/WzMXwCrytkXFWfwsXDLuGGZm2yn
	 HDXv1QtPA9odw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E36CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906679357.31655.3873163597871447300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a07cdcf8791ebb43666496fecc74dfcf62950c27f90fc746ddb075db588cd2
Date: Sun, 28 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759066793
