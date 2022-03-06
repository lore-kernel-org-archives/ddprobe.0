Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944E210EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646589684;
	h=To:Subject:From:Message-Id:Date;
	bh=eBe9PMK4gHD9hDm/TN3/ZSkSjJeN/YiCugHWrkGa7OY=;
	b=ZKfNZ+/wdIr9NutN5dhWMUs30lcvsAEVnli1gb0BTNvadKgJGJxSdakqgb0gZ0Ab
	VdFro6Tf2rF9zHjx9A6fGivvD6vrY9g6CYJJguGyz+LbeAR8mBl+bKzzNxrHRzUpQWY
	QAWVk4gtKDXo9xQD7jSVcS8hrMn+Uc0DXUrgn0HA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646589684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eBe9PMK4gHD9hDm/TN3/ZSkSjJeN/YiCugHWrkGa7OY=;
	b=h2/zT6/5EKA3uw4sQMVrwVH58eT0ibgU7F6rXIdUwMzdhv2sAHrX7UeTzeeF8TFd
	/3RlGpX/4TzR4Djy3Yga9cRDwGqLJS7jdx4/RncJl6+1SG0cow/UrEgxb6k1Kn+CD75
	+99aHUBBmGrbNOuowat+62kTAWEnJBPCe/Y3REeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6064ac35-0caa3d3c-03ce-426f-b33d-2b3cd35a12ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4402a005ff8dcdee1d978ca6cbafbf13b7fa52b9864975f549509da82027c960
Date: Sun, 6 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646589684
