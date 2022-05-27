Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85DD185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 12:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653655019;
	h=To:Subject:From:Message-Id:Date;
	bh=IO2OWrzZ6SuYgztUmD48dbCvfwu+IE8lhmqWsUwd6Yg=;
	b=J0co91kZtYLX6tKiJPWvklZZ0gYTHqrH8QBI5jS9I5bI8rqlV2QyxefVpNyQdShY
	Emu2HjDjLWypu/a2y9MVnTsw1K+0j1YCnYXBGc2+Jlx3OGvaCQJ028RECUM44dEXknj
	aVVyuBsJHsDTkvZYuqrxEFXL9HjsPZkwyHOm7v4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653655019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IO2OWrzZ6SuYgztUmD48dbCvfwu+IE8lhmqWsUwd6Yg=;
	b=cW6YWivXG4EZvEB2W0mZf8yav80p0WPtKaItPwDjhxW9vpsTH9SDJUTLQ2WWynLQ
	vn+5TxkQwsSghF7LcU4ehF8rbUh1zrgFqjNd/eq6/3fOrmaVwYSk/UhehDDGr15iJpQ
	2WmPmcu9yhAUgV/VrliS9uNw0WrqxlNhM1TaMbMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105851f03-7d5bdf55-905c-4587-bc72-6e9b11e79456-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ff94851ce38c4c9b09a4df52461e78b65944c74737d873515bd677021fb981a
Date: Fri, 27 May 2022 12:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653655019
