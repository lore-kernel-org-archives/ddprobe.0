Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D627E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 11:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650886318;
	h=To:Subject:From:Message-Id:Date;
	bh=yoHNurdejcg2IFDYVXlLrVkOCibMqTTmgkgvqp9Yafc=;
	b=T/If644Dw6rZsgNgE57IR3OiqtzTJ/oNoy+vxI03qQEZCzQP7Nb5k6tz6cBMZXIx
	+2SXKbtz9P4tZvjJ5wI8qN+pmZFJDTXpsW7m7n2OYtBBANByo8PV4f7Td41oOvp2evc
	NaDeY6ipymnJpKMLQlFW4dhXkaaTeuUPlidGPw+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650886318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yoHNurdejcg2IFDYVXlLrVkOCibMqTTmgkgvqp9Yafc=;
	b=N7Zg3iVfq/B7dw96SQj4oOHdc2RFffVv0phNyeByjkaUTgacuN2hnPGlmt0FEzbX
	hr0WL4CJMSc9/x3ER4JJiODRtleN6ofBM6UFl7w9Rk8kGR+gvsx2rZ6k8gJXWKNk0qG
	19mU+ZS0FANLYxzB/KUw+h6ItAPkt+YgkSUgzbkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180607e18c3-1d5ef7e2-4d5a-4b90-8c7f-634f1daf7819-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e04f04298e62ad177b7eeb4bac01cefd80085486953ca85456cd1940607f155
Date: Mon, 25 Apr 2022 11:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650886318
