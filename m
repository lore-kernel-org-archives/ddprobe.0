Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37AB612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647893784;
	h=To:Subject:From:Message-Id:Date;
	bh=N/OA37TaHVJSEVQ9lrgXJCtxSryDdQEdxKdLUXI89CE=;
	b=UM1YYFhB/mPfRXDWl7BzRqDCOuxrx6YiKbgEBgqRutwGHZ110SMH0cJ/5bDxCvGw
	YHbpr1CmbPJhvrRfXj62z8FCg6/3P2wX0MZkUGoYbAFHb8zVt6TnBf+zQVm/Yod1+g+
	/s95QE0GUCMRk+YGgGrbUOl9uPCyv8j/McJP2Ol0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647893784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N/OA37TaHVJSEVQ9lrgXJCtxSryDdQEdxKdLUXI89CE=;
	b=kwK7NIyTrwtst91cJTVxgqTryKCsUdOsH6cYvuRs/nJiOQ0fLieeZjpojgx4jdS3
	raAamsFSl5+8RpBjqsszzaZfLErCKGFKyzfvHCm0YQVQfIh75TDo9JWW0jvyHd1eXAv
	wXYJwX74HZ2WdLdk7tABWEXo+ka6hYcrrUsc5mk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae1fa8bd-4f6e54c8-cab2-4fb0-b042-d00591033abe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4a8e6e5141d1e8d05642c37c5df96904f941f4a8282d515eef92d752313f6bd
Date: Mon, 21 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647893784
