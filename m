Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E527A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647769884;
	h=To:Subject:From:Message-Id:Date;
	bh=YdOwFFtI4QagUbZ7DATbQ1EylMVJi3+a0KgbdTwT7zo=;
	b=gIcN1QOQycWuJWgGIo/1mS+zJOUNru8DEfsNbJSbe/2oEhM0BQqJMzXkNs0crHL8
	yW7yPWgQdXxmzWos/aQa0iJmriOSWHFFl0wUQgdHNPVuL+quGDLEOEHhWs+AQI4LmH9
	w7dS/LaPCp/RuPBgRQuTuQcwSxvjAD9Dj3hmAD6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647769884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdOwFFtI4QagUbZ7DATbQ1EylMVJi3+a0KgbdTwT7zo=;
	b=gsatfx8h0fnvD840Xf/s1OrlQpCSKLH4/3KIHGmqYM1irnP0/nhbGnpVjU0ltDd4
	mUlVJPXyYpWRyk+3ulW9cEYL0g144TuS/dC7o1RsG889oPp3ceG7nXd17UqBi6T07le
	CPbQ4tlFhPJKGGZPIJ3yNKjI7jNf/16ENwvX53Gk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6bd187f-b69980b3-e551-43cf-9ca1-58aae4b27d68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9613cd476bcb85388a02bd248b07d0ac8d1344c16498b4912c777d43018e4d89
Date: Sun, 20 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647769884
