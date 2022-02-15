Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7458B7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644955884;
	h=To:Subject:From:Message-Id:Date;
	bh=FznjbfFhJUESJbtCZSkJ3R2Pbg868lwe7CIidWehBaQ=;
	b=HNrv6zT9uI3UrG3nHxtkMuCM3Uwmq0I3vkugdY8Jo0BkTtrKMQc29KXfr24QwAHV
	jSHOUqUwCRH6xjQcGhIOIbpzqECIHdrfQ9XqErADocOZst6la+trP2SbNjMpQ96/1rA
	uMXo/5XD1MutFSd1+6fkKLxIvL+XJpvXY07vJOWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644955884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FznjbfFhJUESJbtCZSkJ3R2Pbg868lwe7CIidWehBaQ=;
	b=hH/hxXuUkmOV72o9RqPlktf39pZRnUR3e38pYeCsKBR+6lU+8H5WM/zu05Wl9CIQ
	9oIUveXlnNbtgtzxaRyJ2TkwLBRACQ/QuhF3FGpD8pjFZEsSmFQjlflgWj6X74nyjpH
	FoG0BRaFCL1kCy7IyfUhvbSGClRFKd3aoEZ+2L6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff02dcee-b9a86e3c-633b-4d31-9b83-d0dc148c2833-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4aff82ce1f28bfc02c249faa9de9a5bf74c983cc1d53e8d7e3ceb6a84b5da258
Date: Tue, 15 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644955884
