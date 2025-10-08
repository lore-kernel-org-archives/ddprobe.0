Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2340D293C4E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759943994; cv=none; b=ABIB2sMsg8OJom+fs49ZPEoEsxrNd90OtFw+6G8LZgx1rwqoqRt9RNO2XPc4TF5yhZDHhwwjgHxAboeMltF4jb6KCI3HnjeuAXy5hs4Pq2diN4SkFV+3pKITJFO8sK/6+v/xG7Y6Owyj7oFch/ECBsZ3bIesu4BlaWaYnKWP/xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759943994; c=relaxed/simple;
	bh=EhuxE8nHHzMiIepfoMF5oXEBjy+U3RNE7SV9a5Yns6U=;
	h=To:Subject:From:Message-Id:Date; b=H+ug/66wDzJbDqkTZx7EMWQE8D3JGkw4H2YQN167SgCzPbcWclL6FxrIx8Wr1BvmO7wReBOOJcPXDitwZRvVfAKlvofYfTIYiVy1L3fiwYqvNWL0c76Dq3qRBg1QO5kdZ+DcU5hMHFr74CzzammvSpFjtbf+zfMeIfplWXQ1n2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6qKPj27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6qKPj27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33DDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759943993;
	bh=EhuxE8nHHzMiIepfoMF5oXEBjy+U3RNE7SV9a5Yns6U=;
	h=To:Subject:From:Date:From;
	b=o6qKPj27QkpCz3W//10POJKuE+stamTY3hIFzrOnnwVEQgWCSyYESD0bvWUnMvJYh
	 YE4R0eIiqNwg7I7VAno+Q11FJ/MVxXv3FqgD9oG/1dYSqDmrgwli/VudZt3Y++4Cxz
	 xmTym1mbO9XaJNtUXvU9ioPQXbMMDlQxn/5XrbKQLNStikc0TI4llcm5IuIDpa2ZMF
	 qcArblJfS29OsFGNGm0poatuSkjjTI94yQs6yVl+NJbaxfmuZN1YFZcy8Gr8HuplnB
	 QgMtnv7k5yuhCvoYUa+I/0jblmDXrfx24V1VmARpHXmv7AOjXbqrXK266uJKr8Hi8k
	 ceEiwlYj6OwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B4CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994399358.10322.11477724654078808457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5e510556f10dd8c199118a124f40ca8a888f31707693964f9ef06032dc4e4d
Date: Wed, 08 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759943993
