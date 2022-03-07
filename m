Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97CED7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646678484;
	h=To:Subject:From:Message-Id:Date;
	bh=09gtl/0t59cCXCaBIaBz24lY8q1sK+B3rYp9q5lrP9w=;
	b=NQ/+XSS2wBz6muVeJhhG1QpFPgEFzKTcIbMSjZSzaMLs4MpMxmXjrR3DuVvb/c+0
	zK7BCAY1FV0Y+PpquOdlOaKYEHqTwG7Dxmz3rM7hF5wLpDeJ+LDqdQpLeqzzbnaFNj8
	TxpGg4Ch3YabcpGWBZGZ9JjW5CGz2zsQfdZcedcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646678484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=09gtl/0t59cCXCaBIaBz24lY8q1sK+B3rYp9q5lrP9w=;
	b=G0K3e9Blxnz/7rusnDYmTauVA95s13IR1F+RcVIBhDCfItayQ7d9wW6cr0LcHdND
	02lekS2ZGncjvlqTnST/icrWo8QMhxBqAyvR1vo69HAmI1YWjg76krllrKqnpHxknZV
	ASRSGnRTm0Mncfsn3jilzE0qPwEIyYZjYWlqf/Hc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65afa749-763db7d3-74fb-400d-a29d-5193622e40f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 692c30fd956a588956167aac050b530759df055c27d974fd570169785babedb8
Date: Mon, 7 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646678484
