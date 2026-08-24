Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FB1382381
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787605834; cv=none; b=Y4UD5RE+l6Crqhg69qjF3jQwrH4G9gcxSYPJCX7V8n4+UW6hEVE02dKXGEkntRRBfJUj7iqJpg7cg+hQCLXEjOwDlXl4cSOc+we8DoXKnBh0KcIQ36PrsZACIl/1BI2w/TbglqT3/eBTXt2hKMLBJ3Nuw9BUabY84VoV5zgMBKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787605834; c=relaxed/simple;
	bh=8s3E7aVdxij8rFtlDysO94kNbDMXNOvLt7t+kZKSZKU=;
	h=To:Subject:From:Message-Id:Date; b=MjmAEAxLM9HfU0inJZSxWEt3ZFlZjb68EV+SfpKjBJNNWzYwA8pa4eGCDh+R6sO26wUtG5RjKnge35t3smcrVDteuwvKu/jnyHqxK+ZINW5Cimw16vGIjBjL5Pr+l9cvAQaOlRxaaRFXWw3rTykhFjJ/1A5J1Riz2ZGPB82uyFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8wM4nCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8wM4nCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C05C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787605833;
	bh=8s3E7aVdxij8rFtlDysO94kNbDMXNOvLt7t+kZKSZKU=;
	h=To:Subject:From:Date:From;
	b=l8wM4nCKVlA8RMEwYdozISoJl8KLkkqC3+vCvQUYmASKVl9CR842i+48GxaELnGf7
	 cJdWQ85yin/v2BztRPE88ip/adlT4yzbGE/JpZfTTZYMcHuS5niS0sXMFe0wrWRFRY
	 LWNdrxi5czfgAyajEnRBqbpThQ063sX22EWHA4ZVgDEfRZVGzOx153As3QH8wmkjZD
	 ntA7cyOG7yN0YmzVOJvz1HUU5kE+oW8CLNkaedW2z+8zezO9y8kvukGSQ9IheSQBW3
	 q6f6gi1/49wblpepC2/FhvtJbKVXp23PXDDQ6sS2JC9Q+1SYQHqsj7hNbqzfmY9hY1
	 p/h+RWWpqhEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC307C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760583369.32203.8266724855795731201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5343aecf9504fc3455fa24117c418e930c246548efe98c1f5d163a7dbeea9dc
Date: Mon, 24 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787605833
