Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB4623CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 13:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648214218;
	h=To:Subject:From:Message-Id:Date;
	bh=Mr9rwc1Qlrbzn5IpCG0iSG+CUOq5Xo4FbiZ11RU0iR8=;
	b=XaSgxT1O9ukT5ZXHWpbMWqWhfJtASmmX+DL/PNgUWgpWrdRyllejgSQPwCaAZaUy
	/vB5YWruSpivxBaTFBYo0DW4QROzSBKnY3ZobaINWm0JdutdQQEgFEHkIbZlG6AdELo
	iJ3AZ4dQHO2FjwkZuVG04g7ZzgzycNPKQwt4+WlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648214218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mr9rwc1Qlrbzn5IpCG0iSG+CUOq5Xo4FbiZ11RU0iR8=;
	b=YTVrD1SsvTkfDr3kkJ9CIzYCg7wE8FbCKmGLAK4n2+7YhlbdPwzz0UGKRHzBmgu7
	+G262gJO6GfTnR5wAz+E5k4lJLF0Fr5/LcA0TEtKgJKrRSIU1bmPERWCNueL7ciUw3w
	XXCTTN3Zbqlm1Epb919I/qnYtG6soo9DADFhyvEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc139162d-1684fd71-67aa-478a-818a-12052d665ec9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bfb9a2674013f460e1741c4fd693ae70433578bd106afe65fe64ffa61530e69
Date: Fri, 25 Mar 2022 13:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648214218
