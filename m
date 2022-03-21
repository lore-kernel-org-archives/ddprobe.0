Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E337563E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647882985;
	h=To:Subject:From:Message-Id:Date;
	bh=wxOMHHqqBP1ZcHLWO1lXG1VT+R4QVaO3EnlhPhNHVO0=;
	b=Uw4fdudsEjmaNv2Lb1mdlZuTqCQxYbHy3AcRN1sEJN5NGiGMaQqr7jljjSw5MbN7
	LQYyaZlHLq4wZAaUUShdL8+LKa2aOXJdOy7W0ySUkVrBnDYyQwSS8DU8JIByBjK0Ksu
	cjsJ+YlNvMhNkx59KO0shwHnOenC92Mt37s5BW1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647882985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wxOMHHqqBP1ZcHLWO1lXG1VT+R4QVaO3EnlhPhNHVO0=;
	b=jKE5gQgviGXY8F0FVBrX0cAYwigxpmytY2HGGphNbblf+TwNszaroweYCPjHewjG
	ZgOi7tlMxB82Rw83qXQQIuS9Kq36KU2AL22pfwqX7FXX+Kh+OPkPdnrTEZsv6Ul7f6K
	dZYAWVb2X7Inxbqb/aXju5HskA2h94brSkXGerXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad7add2f-499f8afb-8453-4294-85c9-25bd8e2cd5e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d97a0e4344859b58f107d9746b502434eba73b0ea6759d57eac1c57761416c3e
Date: Mon, 21 Mar 2022 17:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647882984
