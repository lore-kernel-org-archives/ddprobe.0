Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2393B17C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650725638;
	h=To:Subject:From:Message-Id:Date;
	bh=5f+M5HE0ThIr7zVxsLACaOe6EEgT4M+RKARoFPgMwss=;
	b=ODuXH0dKLC+1z2/YpvrLyVBpLbJhMubxpoqykq23STSiIQ2BUTPlAVTw9A08sypU
	nh5vG3PhTIJv8bz1x2bRtUJ4SOVSfRiPzKx4wiPy3aEoYP3FCrlYTgKxIp21q1gfyHf
	I6VTNcB0CHruq0be/plCPyYi3dpyGdVkV5MhUgpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650725638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5f+M5HE0ThIr7zVxsLACaOe6EEgT4M+RKARoFPgMwss=;
	b=G77t7xKeC+nN4Hsq6ZUSqIJwcpmJ5Tw0tTDwOjKnK3tcBdeG1ViHQFfJBvQFyJRD
	qN6tQoEj00+icvRHPNsE5jxxIyG81Rz+bgUb9lcw+xCVXEQaLuV7T/nqsbESH3cIHzz
	gy9CJuB+fBb1Ih2JzZiOXRqNrKmLpCC/xk4d2Yt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056ea5054-2addd01d-dc3c-4e5c-bbc6-da75fe7395fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe46b8e7beb752bffe2348f6959d19fb48e6720f1ba8e30d28302fd12365fa9
Date: Sat, 23 Apr 2022 14:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650725638
