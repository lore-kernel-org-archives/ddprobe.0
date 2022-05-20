Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236F215D8
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 07:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653032639;
	h=To:Subject:From:Message-Id:Date;
	bh=nvKFGuU3rLQ6J9THdueQd+/gYnEBVnB0U9+ah48v4L4=;
	b=df+IhMGrPh4CKgKwjWP5PkR7SzWdpT7qUbByMZgZ3hh/cFynz1o1LmjByH7w0jam
	I1RIVQpe9xWd/TveeYYLEgAreh9gUQUEBWNcSCrFwzfXlWBH9f6FGobfPGcB4NO8VqN
	bo6IRdiMP0xv6EP18y/7MZxTDSeH5tmy3/fBoG1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653032639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nvKFGuU3rLQ6J9THdueQd+/gYnEBVnB0U9+ah48v4L4=;
	b=YU2kQwT7PpTakOSdlAetTutIWvCLOE62KTat+ksaICNR9QwJq4Dwph8KYkZ8G97A
	DTfUy0A4r5g97cFxAdGL03bGSWaYKN5aKa+kfl7CJarenXFtz3/VuG0wgJLVmJdATH9
	Id/jgKcsQKSO2ELS/A2yI1v7JlvPN+k3zaMCySkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e06c5b3b-620a734a-cca8-401c-b15a-e621bffc0d9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 077bf8593aa4b315678b07b5fd2b14da89556fa11d394b57dc9bbd3102bb2b4e
Date: Fri, 20 May 2022 07:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653032639
