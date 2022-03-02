Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F4833D1
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646228785;
	h=To:Subject:From:Message-Id:Date;
	bh=R02aJqNNNqZUf0xWqslVNZAB52KSJgSzwm5DC202veY=;
	b=ln/pSUCdT2RJR5UyEZIJmkQExV4aSdzyQlDt1snPrwqJiL7Sgj70TEaYMIMA4x7l
	jpKKeXkDEwN31besEAjmDCGxrvVdPJX1CEE/23DaKIO6PqhUE+4X0vfia+REAwkj3b7
	yRWQeBQXDU48/4AdNmxArROMTfhn2VqBxgzF70mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646228785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R02aJqNNNqZUf0xWqslVNZAB52KSJgSzwm5DC202veY=;
	b=VQrK9l+qzVwSY0uSpuBPUEZVdB3sbp0nJ/LKR4SOE6fhAMjphH32Df3EmDSew51C
	lASNlrLL2ZUXthqTaMo1l6jcxiBHIMKr/eUPYDjcd27I/n5IksOGnPJmQKqXhZf5HwM
	1Ri62CuNU0UIQR4lYERl96qef2Ewlh9gcu6fbIgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ae1c6a3-aebf4053-f3f2-4641-943a-d05a42f92f57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1d6d9cc1c1d25bdd8c91a9d33ff731c4a70a3dd09d3d915a412168a9cc9ed7b
Date: Wed, 2 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646228784
