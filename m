Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595030BF67
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776607054; cv=none; b=iCrH0MjEfCEy63lNxvM4ZkA/V030K/ytScCIbrxelMrUgR7Z/jV22G7WhFJcxSLheM/WUO5E8USPAAt69LJGOQpZGeBWQVOOi7ZCPi/rClz6mtS5u5Oug0Wb7sHHpv2zZt+4VTrtLFt4HbAjw8iI0S+ckwAlUr5ybwW6PkekgD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776607054; c=relaxed/simple;
	bh=i1+e2fHD9sGI82v33w71B2s1rDKkisChpVL8r0z0VJs=;
	h=To:Subject:From:Message-Id:Date; b=kz2k/1A8DpJjOyMZ6WHSEPpTJxu0agppIorC+SFTjTqJruPbuBFupDl7Oah+kqRG8yy/DFwh8wbMNx1hEc5x0jFZ9eVjd+488oBoJhcCnBRpCm/eWxjIkB0v6xl69IYAT78mEkAVkozHfL/8Rckv39yFkVuOnTBE6YH9LkfJjNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgIsG99y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgIsG99y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF73C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776607053;
	bh=i1+e2fHD9sGI82v33w71B2s1rDKkisChpVL8r0z0VJs=;
	h=To:Subject:From:Date:From;
	b=CgIsG99yEnKQDQuiDvOZNK7RfWGE+iC2UCXzALa5idyUP9ZSoWW98V4sO7nk+f+Xc
	 35bB72/h36sHwrUh7JqF6bGeF+rkZ19DpY0F4XsgX8D4YblfJtupf87m5yyoWDiMQK
	 YaDcVE1MUqFgTgtAwke9BAZGzPQljOoRuvfQCJS/yMqAbVynZgLgN7bBqs7WcDTbsx
	 7ECNMLDPnwcIszFG79wu3T1qEqcDynm9vLfv2vyzp6GkmZxTwuDzf3S1C//pYz1IVu
	 YY4TCfmDE8Zpqe47EfEZY4GZGP/NKox7jNLsnqgzqI1UBc/mcbGWBQkrP483tsCY1C
	 5rLQlBvwvSfJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D43EA719B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660705368.24632.14978943757809194912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db9737333ceddc126da6d18a1432b6ab73981a26148dfd0f2af9854a104687b
Date: Sun, 19 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776607053
