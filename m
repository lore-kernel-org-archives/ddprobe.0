Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B501B395B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734981954; cv=none; b=dqngeoAVPW5Hoc8AB0/XdNwG16gyx7O0PSt40mvYNfnBIVio/dcK8lEbJoyUZqUP4gqupYvmjcaG2N9xd2V1/nz0+5oJacFBfcNg5Yjw5hBRjgXzrob1tQfP6pWDjp9OkwvDfE8U3hmgVXxX6EeroE/aDsWSKSHfvqvNJYg2L0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734981954; c=relaxed/simple;
	bh=7ovXQN32JgJuPacjai3iDeUU6F2QHA/A1GOU6Bd5t2g=;
	h=To:Subject:From:Message-Id:Date; b=A5ZUioa3uG5/HDC2jS9UlarFoyXXJ06L5a+WnKk7dDSV/lmpf3/JZVfsFVXWYOoiyVrADhxEXLtW/qWImXsQ6E0JUkfdqESJvwn9YlprrnPboSMRNi3LP+qKVQditGQOBwyCxVVU6RpwH6sR3t1jD8WfwaQhP2S8elzCmXlY5lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxpFSRAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxpFSRAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A739FC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734981953;
	bh=7ovXQN32JgJuPacjai3iDeUU6F2QHA/A1GOU6Bd5t2g=;
	h=To:Subject:From:Date:From;
	b=VxpFSRAI752ardIPZ+BnghNSMv5dUCwkconQraW7J7xQN49vQY3rBOxqDq2R7ONfN
	 ymsKZMRPNK0vQRb/IXMSVTt1NSjGC9JpMbSaawVvZuVuKXfZ9UbOyM6otQsGLwFAAL
	 7kvbjgAylaWCE2UwAYKzpXlBmWdUzVjTrr1/7NdRt8A0aF9scoCbSOPJfTOiRMEPGl
	 eF5LD0C8ywIaklcgAIzYs0Edhp4TWjS643ecIo+Hmt/mW4Cc1HkNz9QNNRFCcLDCn4
	 yo9XNMLIlNb+X20jUxBEFjyeZw2aAdbHPvxCS+99k6VC3grKfiLObFmc+LsQfuIVU+
	 XzCgMNJzw3YRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E17E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498195358.14407.5354744792112504059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b058a766065d645f0efd692b598fa8889349b365369ca93e2d189653053edbf9
Date: Mon, 23 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734981953
