Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB01191
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747286394; cv=none; b=qv826kIekzOZS8vkYxvZ4m2yCPQO+FKkUIseAjRADNOM8oWQ/tDydknGW5wi/9j+3Pn1xSNa43fNXnZPv3klJ8pRAAJzFjxbKvzjXcdojqcmTMw2Q6F74LJaQaRJXQvcXZsYgP0LsSu1e4wQ4lQDdyl++5V30p2hHn8WudiFRtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747286394; c=relaxed/simple;
	bh=m9Io6nQaOq6Dq1u1QHC4lzjijjbsuEK9DhNZyiUPgdY=;
	h=To:Subject:From:Message-Id:Date; b=bxeJk7+4yW/koZ1qEIXwv+vLj5Qz/X4956XJ9AO/ftjQ3G7TrxXxhPXGOY31YdcS1Os5l8a9qB+WQt8Ukbone++CczNBgbxz9z14v9kzpKqAQAxioKxhOyJAUwnqiCurQrjgXTeX84vo+oJcxZ518N2IRYsnts0hi/JUd53IRWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiEnWUE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiEnWUE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A348EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747286393;
	bh=m9Io6nQaOq6Dq1u1QHC4lzjijjbsuEK9DhNZyiUPgdY=;
	h=To:Subject:From:Date:From;
	b=fiEnWUE2foGF8W6Oc9LEE4OAphD5cdbS3z0SJ0eec0e4FOlWfBXfVUWQsO2uMNpoG
	 G9f2SthOCr1zSo7jM0JR1GmsOoUT+q3wH5kPil8a1RM9AJHgYCKeUtWlSBxvnFpq0W
	 kXOfiJn/r7Rp8RinB/BwMSJ7PUHuUF+0iyUDYD0fj1eGbaB3pE1XcD+t1lzNqZrdm5
	 5zUstWWVNsMlk9eNBqHXRfYuRN9Iu4hKXa4nyqm+NXIsfuZ8i9/9JkAg89YydSoMfw
	 /4h/btdHj2QqBFerm0ZJ3BQYrdgiSbS+/w7BCm8b4bsGBSUSIHcuJISnmNMcmYkU6q
	 QX4Ly2UnTdprA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90009C10F31
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728639358.7256.17600280826693825666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c36cbd28d69daf018645a82ef33e552e35f65036c61e162c1e636cef789207d
Date: Thu, 15 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747286393
