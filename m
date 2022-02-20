Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673BE5A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645348285;
	h=To:Subject:From:Message-Id:Date;
	bh=HRfsFyvAg32CCBubV0FYLyHWzAiyphXisvfL5PQOajM=;
	b=LPStb5aBKu/QAM8TIG97a0Z1blN3GF8Sxn7WFAwkuKvWTkAwBm3HWz/weiGtc4q/
	2En4U3cZY1oo9ebSLO+6svM+2Ar27isiJzh9Hr+sfc4ifFxcNfTlfYo+bdxOKxrp0m8
	1q03TIyFqgF4r3CfqTIW2icWk02yxpwYJfNuhrfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645348285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRfsFyvAg32CCBubV0FYLyHWzAiyphXisvfL5PQOajM=;
	b=SmHCbM0F4vR0BSB0SmmYxPXtVhU5+Yddn/I9sy0lfzQqy7XvhkpHlWUVyxc/wE9E
	LUK3MUG/6kbrdFRzX0JgxA+zEx7cnvkUcktvRQLQFnkmThCHE3/NcQi7CaNcxrjjU86
	wnaSz0cmf3Sp3SmRwabANFzL0HMlkukm3lxQQq+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1666697f-2fcab0d8-562b-4410-a82c-fc76cef38c62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad238754d7ff26a9b61ce03613d970d1227bfa4e65a92c4bfc8bc32057fe690f
Date: Sun, 20 Feb 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645348284
