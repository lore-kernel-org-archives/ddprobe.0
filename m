Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FD31399
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 21:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650405238;
	h=To:Subject:From:Message-Id:Date;
	bh=jsyYsqF1kuzw6/IDm/ab3BTo7PhZVSdGVAYao4DyaaM=;
	b=RA9/B+rX/2syD7rNSjgLOwTEn4yuDWSNzoi26kxPO6tkvmxXlrUkC4727o4a0HWk
	wPMpZGfh+UfFuMsE5FYYCIZPtT/1SxWa+DqrgfRUmemfMk/BPcqOT00m8XJ3CeYY2l6
	Vr/RTnUs+F6/YRHqOK61YZUw69yRUhl7t27N3gh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650405238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jsyYsqF1kuzw6/IDm/ab3BTo7PhZVSdGVAYao4DyaaM=;
	b=ZmaDK3tHXXC33rNIQXKnai7fqSxOtzdg2ni/QOWi+85NMq0ovpGlcvdb9dZNAbXg
	+tZ/LOUMHQw8vrJLwnqn5aUh/JEHW5LQV5D7EkWu3tbgTHnhcW3N1D49NidTRkbvaTE
	+/DuV88VXNgvKn6WNq/BCkGG8qNgHi7K3XxicS+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043d16611-15ed6d87-2669-48ca-ae28-2eab9764050c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 511f9ad2cef4240e899a6b899f488d5418a9e2d9b038097c95b59a132a8dd2d8
Date: Tue, 19 Apr 2022 21:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650405238
