Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5DF15A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660835452;
	h=To:Subject:From:Message-Id:Date;
	bh=qEqmfksVkrYGM3/drKBHovNYqGKnDMJ1oPBwgdveZdw=;
	b=g7xzUu5JWDt5E2haKQ61eFwB6owbVwuHXeZE3veoLrPll19ticpRLMk+BfhsprLH
	IX8pfHAweMwqTukskG16GTamwdJvobDAKBB9ZCi1f5GcnFjoXIIYBBwy7nSXtpsuwY7
	+1WkupUBG+eWR1vWwN2c6t/y3eEnLL5rVSspwSdo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660835452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qEqmfksVkrYGM3/drKBHovNYqGKnDMJ1oPBwgdveZdw=;
	b=Z/w40rY8KF1sCISBLYrSgwNpOxyNiUpQa3taT6T8xb2WRk67SLXhbeNdeZdKdQN8
	MprRpJMNHfUzZ15UpD27K92vwFCcmmDttXodrqPprKGp3VJvKwU5zJX/OX9QjFQcJ/Q
	3MHbRstCBa7NmhBKCA3rE5fszAl2jLVJcT7OAN4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b181d6c4-4b968977-8871-4c18-9305-090f792af3dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28725df123bc8b3e48647c205c247357c4caa0c385f9d7a57272ed49e0bf2d1e
Date: Thu, 18 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660835452
