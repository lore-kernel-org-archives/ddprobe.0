Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8702E7F04
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015994; cv=none; b=t0eU6tU+1CdwaqqhnfTr3bwKFA+QlLjX8U9hkQ4os4QkAlw+X0kRJD1CfoxbKg0uZsjed9undvNrY2OQy+QTfBl092oDzpoPy+VjVWFEQoFXBWPj6YMdpdRn6Ks8PnsxeAVZeNk3iu/XgvHXzpfMIbwXMTpUx9HiswadXnzrAUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015994; c=relaxed/simple;
	bh=j6eGKYzbAt3yrmE999+GXqAWg98I7i5+kKLEdFJ3xzM=;
	h=To:Subject:From:Message-Id:Date; b=cFDzy02ULbrrEG24G0jwPiCxmeOprj5YFpiAMeXT+yZsEx0YFScjy+hq9jTzgBbli/WzbSxei9PmP/FKW6YwsmPPAXAXRQk/ncB6mF01FO9BZLm9ZLnUNBUOTqOxnjBckCH+jfpCDHA0lBvq9cLJl44Nvx4e935v4h2W+vU3WW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0UblcpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0UblcpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB0C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760015993;
	bh=j6eGKYzbAt3yrmE999+GXqAWg98I7i5+kKLEdFJ3xzM=;
	h=To:Subject:From:Date:From;
	b=B0UblcpCKGOT55Gt46gMcP1OZhFlTL5bjeicx4YGHP1g6HouQW2U2R7nYF7RTK6uf
	 PKK6e1WDTjrZTKTpLtK0plm56uBQvha/9BFrC5YAEqNyyfRskAmLHPM66zMSCG4cvn
	 vOh/zNI4y1qMoRGmHaeIKxO8wwlxhNfF9anTqGqFPJWNInPMuzkPsu1lsGCXqC1m6k
	 gn78YjqSyDh0L1PHlZIcQaN6o6naebTc3GBPXPFjXgf1mcpr7ogjH+eN5yuLwdkTHS
	 vOpvziM2i1TBeopagW5x5jzPL18quwdTjNoeLWYTFrE8gF8BNsAg3+wMkW8G5xQQZ2
	 H9uAo8GiQOXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C07CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001599358.2942.7839165472222652755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afada4e23f2cb06470180b5a0199a0a0508951f2c3697fed8e592850de5fd857
Date: Thu, 09 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760015993
