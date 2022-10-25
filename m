Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D8C7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D086C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666685453;
	bh=vzkNJYCtUBvw9jQh0qQIUKidcpgWO+gbQjIHqqDdaK8=;
	h=To:Subject:From:Date:From;
	b=PjaPVNNibD8FtZ6Pcu8XF+5zYRCTbE6/q56TGWBwIKGjJWhuUoWjT8vpFBclnFZFG
	 KHyhDhIiCYzmdre8JrR4SEmAa31HTneeLtJmIV21jY8KKy6JYe2lrIZTx5OZqQM6hF
	 TvKDBCbI40N2G336KWRw+LiHo8Co44vvyrXtsUTKW04znplfVxJGAKGlWjxqGNT9RR
	 c6r5wsicqd/UivBOZeCfznvbU5LmWNPtYlDO04+QzAjmX9UUycZDZvXfJnHPhYPC/6
	 mQBLp+xanWp1ZUMFXuRcIlkfD3NrdIK/TMCrpQz/wztjIg8XUkO2ikHRmYo0fTyvvG
	 NMrvnTk7KQVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FC0FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668545332.9297.14584526517210577201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b9bf2df9883341260486c3764c88459ab8fb427e35c61ef87f931684ef35f4
Date: Tue, 25 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666685453
