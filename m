Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415D51EBA14
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751752794; cv=none; b=INwpRbrCZZimlnjqGiPMr3tHFuwSLoXXUTa3tkMRifoppt8TQT3plxubApMSeVkspgMEgjOMmg2Um2TS2eLMDxeA1R7VegRvEU+eG1T9R/1LZRm6FDRjnw22CRbo8lLh4i0upfkwSfGb3bzC1fxVaTFUy0xgPMPnYT2vycoMfsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751752794; c=relaxed/simple;
	bh=s5gQ7IGA19jjZU+wAR1LAQKjnM9LdiV00Vl9tPY/o6g=;
	h=To:Subject:From:Message-Id:Date; b=H8UTuBTCYKB/gITL5Uhm2KdzkG3OUo3DANSnBKoxYyoYPewKJKfKSSqSZT/x9k64RjENiZtFBDpWPkSqzYuZuy9JE+cjm7JQnK08C+23FQLCHZFx1IXqdfDKc0sNnFeKhPjyT7LonuT5H3/o3k/sP3OjithDc9FCT81lrTe4Ogk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux0xU/cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux0xU/cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBD5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751752793;
	bh=s5gQ7IGA19jjZU+wAR1LAQKjnM9LdiV00Vl9tPY/o6g=;
	h=To:Subject:From:Date:From;
	b=ux0xU/cwXXlvIeiAeqqqwbshdqSWFcks9CmxUE5Xc0nICIlTJweHyrd2oVDuu/Y/A
	 YhS+axP1A0QQaTsSDN+CCPjk9+ps6fsUSXUw6TMFDJTTz2SmvT+7y8oWqk9caQ3f8D
	 xRwIuNSlf9tf6wfiMgeAd90L/1qOMLBtTy4nV7ow1SbAOI9U39XujqWTuTrpfZs8rR
	 5lY2hzcZj1VYaMVeM0khwIv9zpaEaAZUUCiRPam0gRYHVGCtyC21INZiBxcwKmf6W5
	 PVVpxbxc+GcYYqBHTLLUajOAm3bIs4Z5035R2iB6UDglzZBjRUY3EInqmjGHQcJJ+9
	 9vYTYojsXT2og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E73CC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175279357.22748.12920608078828542961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d332977dbffefba13179a352230c276b78843fa93da34220689e5b433921d23b
Date: Sat, 05 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751752793
