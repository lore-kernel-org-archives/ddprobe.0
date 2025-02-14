Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2271E263F2E
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739548734; cv=none; b=TJ/MHWw50G+0XS/5PeeehXh3ugj0GLjSEgmxLcLLZjEoYmNTKTZP5wc+9Y/VHpcXfJ6VZU7FPsZKH90sFraXQ4HABHkd13sxTexwEJ3+o59Vtvobj0G3esRZJe5VIt7YcXm8eeL1Hr1LVIJE5QyK2CjxeYIuQg2Ue8s1YkweOmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739548734; c=relaxed/simple;
	bh=Fq0KfwKd08pYoQenSQij1CJsyPBrRBaXAczxInzciMo=;
	h=To:Subject:From:Message-Id:Date; b=kkuXKtz7WMo+vP347j7JDAhA39p/HwXEmO6I38Y12zPe070syK4/WVVjKwQKcX9Rw8eabw8kceZgWOoGjTLy5pQjQiwT2CG3u3vCOyD0Q5XkJ0SgjuOKmJsxISfoXI8rxy6Qzecu45A+wIbD8rNNQ35sV19i7Jq2lLBIPvmmR/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbzCZs5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbzCZs5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9716EC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739548733;
	bh=Fq0KfwKd08pYoQenSQij1CJsyPBrRBaXAczxInzciMo=;
	h=To:Subject:From:Date:From;
	b=MbzCZs5gGNTwifEzski7xxsC0l1DNEmLP9RM7RUhABmgkRKtOJOoWfRB6jozel9Xp
	 aRf8ySPDvmxd5mFadxqDvokOXK7YBI5TPab0yIjAtJeg5i7QU6/GhhwX+g8J5KeYiF
	 P79KOFkWlFqg/Y5Qw6vGYEYjTeQErtWa5lqtKgM7xdKEb+i4FgTKd3yo7sXQuQpvsn
	 wIcKwYTo/J4EI8NVmC/P0QAm8VK6jpQ80SRaUuFGW04AA1iVBsN//meEHeQjT+h6v6
	 NGWUiWEvqCa13lKKdRaI8sqH+BWtvp/5T5VEZyfzOxLvm42/1hEadENSjZGoJlVb5D
	 vrBTnM1tRWPzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92CC021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954873357.18478.1961333553344952819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba752744c75dee346a395b8605e39816d3b37d763f5e2834626f39df319f7483
Date: Fri, 14 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739548733
