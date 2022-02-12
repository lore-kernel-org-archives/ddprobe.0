Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9DF7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 16:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644684647;
	h=To:Subject:From:Message-Id:Date;
	bh=xTT3WWLXCcZzC01Xgd5WC1YN012zHxEXf1n3eJ8SjJw=;
	b=GRFOKDV2ywWVXkblVTQvjdzKDs8gwmSO9KI7uksJgzp7IeXHr+IISj4dq0Qq7hSg
	Ykleg1aSNfqAn4sCO83e6jr9mBo7DZeMhlhLTqJk/jngEKcYMv3CPO1gcwou2HkSxkW
	fucH6Hiw0LH7+Q5NSeMoKyJbia+vgHPHNzOi+kaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644684647;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xTT3WWLXCcZzC01Xgd5WC1YN012zHxEXf1n3eJ8SjJw=;
	b=bz8Rt99pUhYpNmyXPPkNG4IJONZkfw4X5SEEHysvfhiCyAnZFwWo1Tp8mOK7pfPM
	lYARSzlqtHp9RayK6WcE+AEDiSeAKp6O7Nt73jOiWEpBwoiasqsXl2FWY7LiZ5gTVdR
	kR+FccghgIEyCFMPMAbBf2EXK69eWzaCrBr8+cYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeed81ce3-77f1d9e6-b50b-4944-a5aa-c9c6661f8075-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 905db5a4988132918a56d93b6c28cea668dbfd873f267687914f80d2f310df8a
Date: Sat, 12 Feb 2022 16:50:47 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644684647
