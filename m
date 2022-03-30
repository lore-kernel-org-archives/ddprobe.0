Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676937B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 14:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648651858;
	h=To:Subject:From:Message-Id:Date;
	bh=34Ll2+y0/N6SL+iAkdQ872MdGzfCVJPkRsblAspin3Y=;
	b=iOnzU+fDqPsI6M3xTsOYAEau755U7xdXMOX0HzGKH3QnEyWGryPS6NmLLOkUrb+a
	zIqz74rguZmiSy4VjIREMcfsEsfpswvRw2pqhU2vYDdgdfQypZ52LRqIsw3zz3ilgMw
	oIeYfo/VF3cXObmFJ302+bHTbMh8U7jkld680XNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648651858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34Ll2+y0/N6SL+iAkdQ872MdGzfCVJPkRsblAspin3Y=;
	b=EoCLwAQRHt1N3s8VxNiBl6tKndVoVr9YT9NKi82eowUBxQvOqRtajXZWhC7Rb9Qh
	Wdc3qc0vAJ3zrJDlIxOKbugfEM1aXNUQV0qWXTac75RfdVjWAjvjyj7cDeP8p6fU7Fp
	J4iXyqi8CN+5cx6D+8/gUZlkMErAqwXvMO7IoL60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb4ef1a1-6c264308-85cd-4f9a-be91-f5574f33c5e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 232b68dd75e5c78569e5c6046818a7dda27caf102945060c8fbcc314626011fb
Date: Wed, 30 Mar 2022 14:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648651858
