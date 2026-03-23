Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267DA21767D
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774230894; cv=none; b=S5mJUaijRr9M8hoo9GxRM8P7NAADtVBDnt/3P3WK0hPi380rR2YDRj5vz8rVu4B+YNMa5R/8WeFJ7AhOPMxZQu+k8blqpCj1gD19kN7klu+vdhiWxrS8FQxZjlvfIPUAsAZF2Xr/UO1JxE7Mia25l3zJfM/Y15Q0helAMB0oQ/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774230894; c=relaxed/simple;
	bh=sNRcOgvyq+45BTOb45EfNeDlRjSTgsn0llGo5oGmOEw=;
	h=To:Subject:From:Message-Id:Date; b=Hj0HZf66bnvhDvp3GQw6SfSn+q/Z/tGbHbERUqhps5Paf2qXFYu9/K0WBWwpKP/l6iKTY4OQ14c5Wj5T/AULbK+m9B+iT0XUrtHHUoW+6L25qiha8eFBcyxhVnYHs+UNyFo6v9LU6p0pT7sx/iTWlLoloRT4ZvWWQmnFwSmrwxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbge5aW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbge5aW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D92C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774230893;
	bh=sNRcOgvyq+45BTOb45EfNeDlRjSTgsn0llGo5oGmOEw=;
	h=To:Subject:From:Date:From;
	b=qbge5aW7AnR02N6ZYRUE/lZ+fDtHh8m5CtSEjRjedQ6gcIY6J/mCNSYIGEptFWWDR
	 KtmoEluMo/yGIcSv4I6ZFeOPSt9SRS3NeCp4mYMt/iSd+ZH+lJlHih5ijDg+4P7R+b
	 cZci8wk0mGJFR2KigpkRHslEI9/WA1bC54BOtIPA/C3so/RlL+lyDxrMMFYtXYFout
	 kcJo1bFgXBqa5g1dEFOUIZpAdENGWOczazO88QAOSIEgz4Z6XnVhwj1ztoSevBLjld
	 ZjiGmpyhE6u2JTgMQPTrJ21UcHyIcEI05Q8DJffZtQB2q6sL+yPsoTZ9fc3iXcRCy8
	 g/LFNcETzVzqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94601D58CB0
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423089359.32140.7980820405180163520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6768496790364dcd4a4eed7b435c7a155a1380fbe755424f7dbcde23b642bc32
Date: Mon, 23 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774230893
