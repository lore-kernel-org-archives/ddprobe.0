Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA686444
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647645684;
	h=To:Subject:From:Message-Id:Date;
	bh=/t1jv4+EHhtq448d/jwIt641DYbcTRR8c1byz7BUPRw=;
	b=aduxoMZmgzA9x59NoSQZtmjyQCImhlzz0AhmjZ3TtBDYrk4E3RRE88WloZIds41B
	xP98HlT7vvWyA3BsrBF9lJI+ZXs/w8tliLbBWo6ongjQd8+Fl3bHDN0HA2ih+vVX6O6
	tkljNsA9j+HDq3wy/1wx4wKJ8tmUHxie7FuXKjbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647645684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/t1jv4+EHhtq448d/jwIt641DYbcTRR8c1byz7BUPRw=;
	b=MJNejIIWn4q0S2cidtCWkjEprWZaISdby9mNesfrtOxjmDtX/C33GS4deMJY7Qd/
	+8Po/T1alWUBqgo+zFbypDh5jQ9em5Iq5u3s7CWJVMVdAHDw3+Nmlv63Thx9b1SMtUs
	OQUe3dEKtmKwKQ5xYx4SsQ40iV1emHHoIJPnHhVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f55f40b-45c06b03-3c5a-4934-944f-a483d03e19c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8038442f309dad3304c702f42f1c6182b80f9d60cd4dda611212427548f389c9
Date: Fri, 18 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647645684
