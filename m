Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D191FC0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 16:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652114818;
	h=To:Subject:From:Message-Id:Date;
	bh=zjT3uXeX93fwIAc/WdVa124G7cOREoogpOm79n+jhjY=;
	b=CTyhkwXFQFK2AoxfM8kxn8QpPM/3wVQCFkKqtMMKOxo4+k0kUjp/t50U1nLSEBzQ
	AP8/vBdIYkTNcaTHq2+7l9XbRya675iFX0IEeqIWqRfrnWp0/xrrntIzoAVdL8tNdoV
	D25gMkp+zqjEmcxIR4uW9N4UQjbrewYgJUXJtpjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652114818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zjT3uXeX93fwIAc/WdVa124G7cOREoogpOm79n+jhjY=;
	b=Tb30ffiyOzHj9jgjcRUyKC+oSVk2zFQtEV5vkyep4zpTRTB1DH+1sct6GYnfyidF
	nn5HDBW7/PgdswLi5d6OqJbNP1Vl5N7KJUwZ4Y+UPvYgbbnFqkFxvQCoP4F7tgZvHXH
	ueRNdH65sb/JGqhKoynE0UFZZCwWRjx1tGUN7YyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a9b7852e-ae127d30-a56c-498f-a718-38655a3806a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11e92a19d4d97c6bad0d1ef2899451f291da35d966d40396a12440337d4fb895
Date: Mon, 9 May 2022 16:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652114818
