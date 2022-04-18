Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82BA801
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 12:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650284938;
	h=To:Subject:From:Message-Id:Date;
	bh=zSZKJ796S961CfDqPjo7YNw8uu0IG9uZBqq7ulqYBa8=;
	b=CXqQ37QTI5dO1XUhYbIsvHAJwSI2caVkSocjKntkbKo553pFJhSoya6kOXe53pIh
	AQjfRSOH1odbW/i8h0DHi7pF3Bs74y2pfhwU1BQHO8yfyFNvVagrIfQWAJC1zHveN3k
	5ra3XAS44c/6sH9OutCpOYK+OnCUt75sscNYb2xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650284938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zSZKJ796S961CfDqPjo7YNw8uu0IG9uZBqq7ulqYBa8=;
	b=Updxv1BTZTKjUjHTnIXb4W/0kVs83gr6kN/EKeCWlLZpr/u+GY4k696dqN/nTXxv
	RhrMTvNru4czujF9O4qhMWd/Q6o0JBQtXZk/o9iLw0KhAKGhK7jbVmF6S3Jc1WEk4F9
	1ptXHWRAVqiu2NVuAsoeY4p+w3KVtNjnrSO1K940=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ca5c409-0f2fb4c2-1be1-4a9a-978e-a0b20ef83676-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f5810123594036b95d783d7005259a0a8b2045d63a23b97f31983a951b9d31f
Date: Mon, 18 Apr 2022 12:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650284938
