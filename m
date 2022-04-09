Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C015A52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 21:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649538418;
	h=To:Subject:From:Message-Id:Date;
	bh=8rUIv14XUf4MpkTnbiJElnf8QWsSRsT8NS4DhwPE7aQ=;
	b=JWXgIRN4SoJyI1qHd9gQeosPiAqZUmnlTbOfaRjICLTcd45tLL8NQSAlSwBXC/5u
	JXUtTDFUagJfrVNMmMAI7kP8XF+dYq2XaQXIGo4uX21ORoMKgUWnczv6KaQjABJ6I26
	symOxa/cWIhzBmxfDhNsaaHzegfU8T+MlbyMJAI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649538418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8rUIv14XUf4MpkTnbiJElnf8QWsSRsT8NS4DhwPE7aQ=;
	b=bI7FjkN/jQ7j4NddFHZ1du3lIv27XHpp2GAXe5knamciIDzwrhqSobbcxphI8vwv
	I4rejiCl7op2ZwJJWFKhPLtwDHgECq9maeZ63bQABTW+fofbx5Oz7VqFteBNgz02Y8d
	ki8li3BNa54R6O/H1XKnzOKIVNfKeGdJFMpecUm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801026c644-8bc4265d-bb8e-464e-bc7b-fd0c786039dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47b3c192fd16d35ee8f13cd5dce35f1016e16c3598f77c62ef07c94f281bba17
Date: Sat, 9 Apr 2022 21:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649538418
