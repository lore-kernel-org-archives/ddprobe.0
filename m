Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EBD15A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 07:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649919838;
	h=To:Subject:From:Message-Id:Date;
	bh=Wj0nY+TMcHohM8kowU6CD7VJGK7Pd/6mGMYOrdafhvA=;
	b=RJOv+ZC8difMfuDqb9t5k7LvZ169mvQY1EfXJXFi9hxafRDJfVRJMZ0XzIqbjKp9
	kK/1wsAO2fWw/yMDfWojP10kkbVfsBMao+0S3m5e/dGSplRG4E09VxE879qGotOodSQ
	A4TakrEyJCH7AjN86Rg07921gK/bfN3eymydZo8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649919838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wj0nY+TMcHohM8kowU6CD7VJGK7Pd/6mGMYOrdafhvA=;
	b=IRY213OymKtaI5r+J1B3MfLJpwpCRJsIwaWrREBZIgnkTngdgIF6ohwgLSQ2La3o
	p5sD/eleH9RW2qI7kCGeNPhI/zQsAvDY/1HhheISVAB/U5N0tOt9zTpKp+hpE3UZ0T1
	9eEqPHp6BlINHfQEhdyN4a5vhnV4X67ot2qXRGzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018026e2c879-9fa517b2-bb83-473c-b0a6-a621c6c58c1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29fd252e13ae1aa31e0da63db396c612fc407d78e47a1e35d6ae6cda46307ff2
Date: Thu, 14 Apr 2022 07:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649919838
